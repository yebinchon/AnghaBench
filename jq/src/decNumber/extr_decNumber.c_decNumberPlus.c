
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ uInt ;
struct TYPE_13__ {int exponent; } ;
typedef TYPE_1__ decNumber ;
typedef int decContext ;


 int DECUNUSED ;
 int decAddOp (TYPE_1__*,TYPE_1__*,TYPE_1__ const*,int *,int ,scalar_t__*) ;
 int decCheckInexact (TYPE_1__*,int *) ;
 scalar_t__ decCheckOperands (TYPE_1__*,int ,TYPE_1__ const*,int *) ;
 int decNumberZero (TYPE_1__*) ;
 int decStatus (TYPE_1__*,scalar_t__,int *) ;

decNumber * decNumberPlus(decNumber *res, const decNumber *rhs,
                          decContext *set) {
  decNumber dzero;
  uInt status=0;




  decNumberZero(&dzero);
  dzero.exponent=rhs->exponent;
  decAddOp(res, &dzero, rhs, set, 0, &status);
  if (status!=0) decStatus(res, status, set);



  return res;
  }
