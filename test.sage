from mozes import Mozes

def main():
    tests = [['A',3],['B',4],['F',4]]
    for test in tests:
        A = Mozes(CartanType(test))
        m = A.order()
        w = WeylGroup(test)
        n = w.order()
        
        if m == n:
            print("Order of "+str(test)+" is: "+str(n))
        else:
            print("Disagreement on "+str(test))

    affines = [[['A',2,1],2],[['D',5,2],1]]
    for affine in affines:
        A = Mozes(CartanType(affine[0]))
        A.computeR(affine[1])
        k = len(A.R[affine[1]])
        print("Number of length "+str(affine[1]) \
                +" elements in "+str(affine[0])+": "+str(k))
if __name__ == '__main__':
    main()
