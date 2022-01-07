
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uInt ;
struct TYPE_8__ {scalar_t__ bytes; } ;
typedef TYPE_1__ decimal64 ;
struct TYPE_9__ {scalar_t__ exponent; int bits; } ;
typedef TYPE_2__ decNumber ;
typedef int Int ;


 size_t* COMBEXP ;
 size_t* COMBMSD ;
 scalar_t__ DECIMAL64_Bias ;
 int DECINF ;
 scalar_t__ DECLITEND ;
 int DECNAN ;
 int DECNEG ;
 int DECSNAN ;
 int UBTOUI (scalar_t__) ;
 int decDigitsFromDPD (TYPE_2__*,size_t*,int) ;
 int decNumberZero (TYPE_2__*) ;
 int sourhi ;
 int sourlo ;

decNumber * decimal64ToNumber(const decimal64 *d64, decNumber *dn) {
  uInt msd;
  uInt exp;
  uInt comb;
  Int need;
  uInt uiwork;
  uInt sourar[2];




  if (DECLITEND) {
    sourar[0]=UBTOUI(d64->bytes );
    sourar[1]=UBTOUI(d64->bytes+4);
    }
   else {
    sourar[1]=UBTOUI(d64->bytes );
    sourar[0]=UBTOUI(d64->bytes+4);
    }

  comb=(sourar[1]>>26)&0x1f;

  decNumberZero(dn);
  if (sourar[1]&0x80000000) dn->bits=DECNEG;

  msd=COMBMSD[comb];
  exp=COMBEXP[comb];

  if (exp==3) {
    if (msd==0) {
      dn->bits|=DECINF;
      return dn;
      }
    else if (sourar[1]&0x02000000) dn->bits|=DECSNAN;
    else dn->bits|=DECNAN;
    msd=0;
    }
   else {
    dn->exponent=(exp<<8)+((sourar[1]>>18)&0xff)-DECIMAL64_Bias;
    }


  sourar[1]&=0x0003ffff;
  if (msd) {
    sourar[1]|=msd<<18;
    need=6;
    }
   else {
    if (!sourar[1]) {
      if (!sourar[0]) return dn;
      need=3;
      if (sourar[0]&0xc0000000) need++;

      }
     else {
      need=4;
      if (sourar[1]&0x0003ff00) need++;
      }
    }

  decDigitsFromDPD(dn, sourar, need);
  return dn;
  }
