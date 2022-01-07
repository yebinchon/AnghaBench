
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uInt ;
typedef int decNumber ;
typedef int decContext ;


 int COMPMINMAG ;
 int decCheckInexact (int *,int *) ;
 int decCompareOp (int *,int const*,int const*,int *,int ,scalar_t__*) ;
 int decStatus (int *,scalar_t__,int *) ;

decNumber * decNumberMinMag(decNumber *res, const decNumber *lhs,
                         const decNumber *rhs, decContext *set) {
  uInt status=0;
  decCompareOp(res, lhs, rhs, set, COMPMINMAG, &status);
  if (status!=0) decStatus(res, status, set);



  return res;
  }
