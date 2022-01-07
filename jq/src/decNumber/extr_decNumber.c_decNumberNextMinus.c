
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int uInt ;
struct TYPE_19__ {int bits; int* lsu; scalar_t__ exponent; } ;
typedef TYPE_1__ decNumber ;
struct TYPE_20__ {int round; } ;
typedef TYPE_2__ decContext ;


 int DECINF ;
 int DECNEG ;
 int DECUNUSED ;
 int DEC_Invalid_operation ;
 scalar_t__ DEC_MIN_EMIN ;
 int DEC_ROUND_FLOOR ;
 int DEC_sNaN ;
 int decAddOp (TYPE_1__*,TYPE_1__ const*,TYPE_1__*,TYPE_2__*,int,int*) ;
 scalar_t__ decCheckOperands (TYPE_1__*,int ,TYPE_1__ const*,TYPE_2__*) ;
 int decNumberZero (TYPE_1__*) ;
 int decSetMaxValue (TYPE_1__*,TYPE_2__*) ;
 int decStatus (TYPE_1__*,int,TYPE_2__*) ;

decNumber * decNumberNextMinus(decNumber *res, const decNumber *rhs,
                               decContext *set) {
  decNumber dtiny;
  decContext workset=*set;
  uInt status=0;





  if ((rhs->bits&(DECINF|DECNEG))==DECINF) {
    decSetMaxValue(res, set);

    return res;
    }
  decNumberZero(&dtiny);
  dtiny.lsu[0]=1;
  dtiny.exponent=DEC_MIN_EMIN-1;
  workset.round=DEC_ROUND_FLOOR;
  decAddOp(res, rhs, &dtiny, &workset, DECNEG, &status);
  status&=DEC_Invalid_operation|DEC_sNaN;
  if (status!=0) decStatus(res, status, set);
  return res;
  }
