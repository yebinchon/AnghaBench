
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uInt ;
struct TYPE_8__ {scalar_t__ bytes; } ;
typedef TYPE_1__ decimal128 ;
struct TYPE_9__ {scalar_t__ exponent; int bits; } ;
typedef TYPE_2__ decNumber ;
typedef int Int ;


 size_t* COMBEXP ;
 size_t* COMBMSD ;
 scalar_t__ DECIMAL128_Bias ;
 int DECINF ;
 scalar_t__ DECLITEND ;
 int DECNAN ;
 int DECNEG ;
 int DECSNAN ;
 void* UBTOUI (scalar_t__) ;
 int decDigitsFromDPD (TYPE_2__*,size_t*,int) ;
 int decNumberZero (TYPE_2__*) ;
 int sourhi ;
 void* sourlo ;
 void* sourmh ;
 void* sourml ;

decNumber * decimal128ToNumber(const decimal128 *d128, decNumber *dn) {
  uInt msd;
  uInt exp;
  uInt comb;
  Int need;
  uInt uiwork;
  uInt sourar[4];






  if (DECLITEND) {
    sourar[0]=UBTOUI(d128->bytes );
    sourar[1]=UBTOUI(d128->bytes+4 );
    sourar[2]=UBTOUI(d128->bytes+8 );
    sourar[3]=UBTOUI(d128->bytes+12);
    }
   else {
    sourar[3]=UBTOUI(d128->bytes );
    sourar[2]=UBTOUI(d128->bytes+4 );
    sourar[1]=UBTOUI(d128->bytes+8 );
    sourar[0]=UBTOUI(d128->bytes+12);
    }

  comb=(sourar[3]>>26)&0x1f;

  decNumberZero(dn);
  if (sourar[3]&0x80000000) dn->bits=DECNEG;

  msd=COMBMSD[comb];
  exp=COMBEXP[comb];

  if (exp==3) {
    if (msd==0) {
      dn->bits|=DECINF;
      return dn;
      }
    else if (sourar[3]&0x02000000) dn->bits|=DECSNAN;
    else dn->bits|=DECNAN;
    msd=0;
    }
   else {
    dn->exponent=(exp<<12)+((sourar[3]>>14)&0xfff)-DECIMAL128_Bias;
    }


  sourar[3]&=0x00003fff;
  if (msd) {
    sourar[3]|=msd<<14;
    need=12;
    }
   else {
    if (sourar[3]) need=11;
     else if (sourar[2]) need=10;
     else if (sourar[1]) need=7;
     else if (sourar[0]) need=4;
     else return dn;
    }

  decDigitsFromDPD(dn, sourar, need);

  return dn;
  }
