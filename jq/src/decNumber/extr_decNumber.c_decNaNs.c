
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uInt ;
struct TYPE_11__ {int bits; int digits; scalar_t__ exponent; int * lsu; } ;
typedef TYPE_1__ decNumber ;
struct TYPE_12__ {int digits; } ;
typedef TYPE_2__ decContext ;
typedef int Unit ;


 int D2U (int) ;
 int DECDPUN ;
 int DECNAN ;
 int DECSNAN ;
 int DEC_Invalid_operation ;
 int DEC_sNaN ;
 int decDecap (TYPE_1__*,int) ;
 int decNumberCopy (TYPE_1__*,TYPE_1__ const*) ;

__attribute__((used)) static decNumber * decNaNs(decNumber *res, const decNumber *lhs,
                           const decNumber *rhs, decContext *set,
                           uInt *status) {


  if (lhs->bits & DECSNAN)
    *status|=DEC_Invalid_operation | DEC_sNaN;
   else if (rhs==((void*)0));
   else if (rhs->bits & DECSNAN) {
    lhs=rhs;
    *status|=DEC_Invalid_operation | DEC_sNaN;
    }
   else if (lhs->bits & DECNAN);
   else lhs=rhs;


  if (lhs->digits<=set->digits) decNumberCopy(res, lhs);
   else {
    const Unit *ul;
    Unit *ur, *uresp1;

    res->bits=lhs->bits;
    uresp1=res->lsu+D2U(set->digits);
    for (ur=res->lsu, ul=lhs->lsu; ur<uresp1; ur++, ul++) *ur=*ul;
    res->digits=D2U(set->digits)*DECDPUN;

    if (res->digits>set->digits) decDecap(res, res->digits-set->digits);
    }

  res->bits&=~DECSNAN;
  res->bits|=DECNAN;
  res->exponent=0;

  return res;
  }
