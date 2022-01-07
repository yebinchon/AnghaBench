
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int uInt ;
struct TYPE_25__ {int bits; scalar_t__ digits; scalar_t__ exponent; } ;
typedef TYPE_1__ decNumber ;
struct TYPE_26__ {int digits; } ;
typedef TYPE_2__ decContext ;
typedef scalar_t__ Int ;


 int D2N (int) ;
 int DECINF ;
 int DECNEG ;
 int DECUNUSED ;
 int DEC_Division_by_zero ;
 scalar_t__ decCheckOperands (TYPE_1__*,int ,TYPE_1__ const*,TYPE_2__*) ;
 int decNaNs (TYPE_1__*,TYPE_1__ const*,int *,TYPE_2__*,int *) ;
 int decNumberCopyAbs (TYPE_1__*,TYPE_1__ const*) ;
 int decNumberFromInt32 (TYPE_1__*,scalar_t__) ;
 scalar_t__ decNumberIsInfinite (TYPE_1__ const*) ;
 scalar_t__ decNumberIsNaN (TYPE_1__ const*) ;
 scalar_t__ decNumberIsZero (TYPE_1__ const*) ;
 int decNumberPlus (TYPE_1__*,TYPE_1__*,TYPE_2__*) ;
 int decNumberZero (TYPE_1__*) ;
 int decStatus (TYPE_1__*,int ,TYPE_2__*) ;

decNumber * decNumberLogB(decNumber *res, const decNumber *rhs,
                          decContext *set) {
  uInt status=0;






  if (decNumberIsNaN(rhs)) decNaNs(res, rhs, ((void*)0), set, &status);
   else if (decNumberIsInfinite(rhs)) decNumberCopyAbs(res, rhs);
   else if (decNumberIsZero(rhs)) {
    decNumberZero(res);
    res->bits=DECNEG|DECINF;
    status|=DEC_Division_by_zero;
    }
   else {
    Int ae=rhs->exponent+rhs->digits-1;
    if (set->digits>=10) decNumberFromInt32(res, ae);
     else {
      decNumber buft[D2N(10)];
      decNumber *t=buft;
      decNumberFromInt32(t, ae);
      decNumberPlus(res, t, set);
      }
    }

  if (status!=0) decStatus(res, status, set);
  return res;
  }
