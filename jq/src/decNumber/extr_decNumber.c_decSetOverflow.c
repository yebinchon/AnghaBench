
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uInt ;
typedef int uByte ;
struct TYPE_9__ {int bits; int exponent; } ;
typedef TYPE_1__ decNumber ;
struct TYPE_10__ {int emax; int digits; int round; scalar_t__ clamp; } ;
typedef TYPE_2__ decContext ;
typedef int Int ;
typedef int Flag ;


 int DECINF ;
 int DECNEG ;
 int DEC_Clamped ;
 int DEC_Inexact ;
 int DEC_Overflow ;




 int DEC_Rounded ;
 scalar_t__ ISZERO (TYPE_1__*) ;
 int decNumberZero (TYPE_1__*) ;
 int decSetMaxValue (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void decSetOverflow(decNumber *dn, decContext *set, uInt *status) {
  Flag needmax=0;
  uByte sign=dn->bits&DECNEG;

  if (ISZERO(dn)) {
    Int emax=set->emax;
    if (set->clamp) emax-=set->digits-1;
    if (dn->exponent>emax) {
      dn->exponent=emax;
      *status|=DEC_Clamped;
      }
    return;
    }

  decNumberZero(dn);
  switch (set->round) {
    case 129: {
      needmax=1;
      break;}
    case 131: {
      needmax=1;
      break;}
    case 130: {
      if (sign) needmax=1;
      break;}
    case 128: {
      if (!sign) needmax=1;
      break;}
    default: break;
    }
  if (needmax) {
    decSetMaxValue(dn, set);
    dn->bits=sign;
    }
   else dn->bits=sign|DECINF;
  *status|=DEC_Overflow | DEC_Inexact | DEC_Rounded;
  }
