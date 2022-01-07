
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uInt ;
struct TYPE_8__ {int bytes; } ;
typedef TYPE_1__ decimal32 ;
struct TYPE_9__ {scalar_t__ exponent; int bits; } ;
typedef TYPE_2__ decNumber ;


 int* COMBEXP ;
 int* COMBMSD ;
 scalar_t__ DECIMAL32_Bias ;
 int DECINF ;
 int DECNAN ;
 int DECNEG ;
 int DECSNAN ;
 int UBTOUI (int ) ;
 int decDigitsFromDPD (TYPE_2__*,int*,int) ;
 int decNumberZero (TYPE_2__*) ;

decNumber * decimal32ToNumber(const decimal32 *d32, decNumber *dn) {
  uInt msd;
  uInt exp;
  uInt comb;
  uInt sour;
  uInt uiwork;


  sour=UBTOUI(d32->bytes);

  comb=(sour>>26)&0x1f;

  decNumberZero(dn);
  if (sour&0x80000000) dn->bits=DECNEG;

  msd=COMBMSD[comb];
  exp=COMBEXP[comb];

  if (exp==3) {
    if (msd==0) {
      dn->bits|=DECINF;
      return dn;
      }
    else if (sour&0x02000000) dn->bits|=DECSNAN;
    else dn->bits|=DECNAN;
    msd=0;
    }
   else {
    dn->exponent=(exp<<6)+((sour>>20)&0x3f)-DECIMAL32_Bias;
    }


  sour&=0x000fffff;
  if (msd) {
    sour|=msd<<20;
    decDigitsFromDPD(dn, &sour, 3);
    return dn;
    }

  if (!sour) return dn;
  if (sour&0x000ffc00)
    decDigitsFromDPD(dn, &sour, 2);
   else
    decDigitsFromDPD(dn, &sour, 1);
  return dn;
  }
