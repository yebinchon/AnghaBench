
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ exponent; int* lsu; scalar_t__ bits; int digits; } ;
typedef TYPE_1__ decNumber ;
struct TYPE_17__ {int digits; } ;
typedef TYPE_2__ decContext ;
typedef int Unit ;
typedef size_t Int ;


 int D2U (int ) ;
 size_t DECDPUN ;
 int DEC_Invalid_operation ;
 size_t MSUDIGITS (int ) ;
 scalar_t__ decCheckOperands (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*,TYPE_2__*) ;
 int decGetDigits (int*,int) ;
 scalar_t__ decNumberIsNegative (TYPE_1__ const*) ;
 scalar_t__ decNumberIsSpecial (TYPE_1__ const*) ;
 int decStatus (TYPE_1__*,int ,TYPE_2__*) ;
 scalar_t__* powers ;

decNumber * decNumberAnd(decNumber *res, const decNumber *lhs,
                         const decNumber *rhs, decContext *set) {
  const Unit *ua, *ub;
  const Unit *msua, *msub;
  Unit *uc, *msuc;
  Int msudigs;




  if (lhs->exponent!=0 || decNumberIsSpecial(lhs) || decNumberIsNegative(lhs)
   || rhs->exponent!=0 || decNumberIsSpecial(rhs) || decNumberIsNegative(rhs)) {
    decStatus(res, DEC_Invalid_operation, set);
    return res;
    }


  ua=lhs->lsu;
  ub=rhs->lsu;
  uc=res->lsu;
  msua=ua+D2U(lhs->digits)-1;
  msub=ub+D2U(rhs->digits)-1;
  msuc=uc+D2U(set->digits)-1;
  msudigs=MSUDIGITS(set->digits);
  for (; uc<=msuc; ua++, ub++, uc++) {
    Unit a, b;
    if (ua>msua) a=0;
     else a=*ua;
    if (ub>msub) b=0;
     else b=*ub;
    *uc=0;
    if (a|b) {
      Int i, j;
      *uc=0;

      for (i=0; i<DECDPUN; i++) {
        if (a&b&1) *uc=*uc+(Unit)powers[i];
        j=a%10;
        a=a/10;
        j|=b%10;
        b=b/10;
        if (j>1) {
          decStatus(res, DEC_Invalid_operation, set);
          return res;
          }
        if (uc==msuc && i==msudigs-1) break;
        }
      }
    }

  res->digits=decGetDigits(res->lsu, uc-res->lsu);
  res->exponent=0;
  res->bits=0;
  return res;
  }
