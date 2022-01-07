
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ exponent; int* lsu; scalar_t__ bits; int digits; } ;
typedef TYPE_1__ decNumber ;
struct TYPE_15__ {int digits; } ;
typedef TYPE_2__ decContext ;
typedef int Unit ;
typedef size_t Int ;


 int D2U (int ) ;
 size_t DECDPUN ;
 int DECUNUSED ;
 int DEC_Invalid_operation ;
 size_t MSUDIGITS (int ) ;
 scalar_t__ decCheckOperands (TYPE_1__*,int ,TYPE_1__ const*,TYPE_2__*) ;
 int decGetDigits (int*,int) ;
 scalar_t__ decNumberIsNegative (TYPE_1__ const*) ;
 scalar_t__ decNumberIsSpecial (TYPE_1__ const*) ;
 int decStatus (TYPE_1__*,int ,TYPE_2__*) ;
 scalar_t__* powers ;

decNumber * decNumberInvert(decNumber *res, const decNumber *rhs,
                            decContext *set) {
  const Unit *ua, *msua;
  Unit *uc, *msuc;
  Int msudigs;




  if (rhs->exponent!=0 || decNumberIsSpecial(rhs) || decNumberIsNegative(rhs)) {
    decStatus(res, DEC_Invalid_operation, set);
    return res;
    }

  ua=rhs->lsu;
  uc=res->lsu;
  msua=ua+D2U(rhs->digits)-1;
  msuc=uc+D2U(set->digits)-1;
  msudigs=MSUDIGITS(set->digits);
  for (; uc<=msuc; ua++, uc++) {
    Unit a;
    Int i, j;
    if (ua>msua) a=0;
     else a=*ua;
    *uc=0;


    for (i=0; i<DECDPUN; i++) {
      if ((~a)&1) *uc=*uc+(Unit)powers[i];
      j=a%10;
      a=a/10;
      if (j>1) {
        decStatus(res, DEC_Invalid_operation, set);
        return res;
        }
      if (uc==msuc && i==msudigs-1) break;
      }
    }

  res->digits=decGetDigits(res->lsu, uc-res->lsu);
  res->exponent=0;
  res->bits=0;
  return res;
  }
