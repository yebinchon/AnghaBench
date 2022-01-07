
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uInt ;
typedef int decNumber ;
typedef int decContext ;


 int DECNEG ;
 int decAddOp (int *,int const*,int const*,int *,int ,scalar_t__*) ;
 int decCheckInexact (int *,int *) ;
 int decStatus (int *,scalar_t__,int *) ;

decNumber * decNumberSubtract(decNumber *res, const decNumber *lhs,
                              const decNumber *rhs, decContext *set) {
  uInt status=0;

  decAddOp(res, lhs, rhs, set, DECNEG, &status);
  if (status!=0) decStatus(res, status, set);



  return res;
  }
