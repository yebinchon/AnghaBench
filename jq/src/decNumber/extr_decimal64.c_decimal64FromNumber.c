
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uInt ;
struct TYPE_15__ {scalar_t__ bytes; } ;
typedef TYPE_1__ decimal64 ;
struct TYPE_16__ {scalar_t__ exponent; int digits; int bits; scalar_t__* lsu; } ;
typedef TYPE_2__ decNumber ;
struct TYPE_17__ {int status; int round; } ;
typedef TYPE_3__ decContext ;
typedef scalar_t__ Int ;


 int* BIN2DPD ;
 int DECDPUN ;
 scalar_t__ DECIMAL64_Bias ;
 int DECIMAL64_Ehigh ;
 scalar_t__ DECIMAL64_Emax ;
 scalar_t__ DECIMAL64_Emin ;
 int DECIMAL64_Pmax ;
 int DECIMAL_Inf ;
 int DECIMAL_NaN ;
 int DECIMAL_sNaN ;
 int DECINF ;
 scalar_t__ DECLITEND ;
 int DECNAN ;
 int DECNEG ;
 int DECSPECIAL ;
 int DEC_Clamped ;
 int DEC_INIT_DECIMAL64 ;
 int UBFROMUI (scalar_t__,int) ;
 int decContextDefault (TYPE_3__*,int ) ;
 int decContextSetStatus (TYPE_3__*,int) ;
 int decDigitsToDPD (TYPE_2__ const*,int*,scalar_t__) ;
 scalar_t__ decNumberIsZero (TYPE_2__ const*) ;
 int decNumberPlus (TYPE_2__*,TYPE_2__ const*,TYPE_3__*) ;
 int targhi ;
 int targlo ;

decimal64 * decimal64FromNumber(decimal64 *d64, const decNumber *dn,
                                decContext *set) {
  uInt status=0;
  Int ae;
  decNumber dw;
  decContext dc;
  uInt comb, exp;
  uInt uiwork;
  uInt targar[2]={0, 0};
  ae=dn->exponent+dn->digits-1;
  if (dn->digits>DECIMAL64_Pmax
   || ae>DECIMAL64_Emax
   || ae<DECIMAL64_Emin) {
    decContextDefault(&dc, DEC_INIT_DECIMAL64);
    dc.round=set->round;
    decNumberPlus(&dw, dn, &dc);

    dw.bits|=dn->bits&DECNEG;
    status=dc.status;
    dn=&dw;
    }

  if (dn->bits&DECSPECIAL) {
    if (dn->bits&DECINF) targar[1]=DECIMAL_Inf<<24;
     else {
      if ((*dn->lsu!=0 || dn->digits>1)
       && (dn->digits<DECIMAL64_Pmax)) {
        decDigitsToDPD(dn, targar, 0);
        }
      if (dn->bits&DECNAN) targar[1]|=DECIMAL_NaN<<24;
       else targar[1]|=DECIMAL_sNaN<<24;
      }
    }

   else {
    if (decNumberIsZero(dn)) {

      if (dn->exponent<-DECIMAL64_Bias) {
        exp=0;
        status|=DEC_Clamped;
        }
       else {
        exp=dn->exponent+DECIMAL64_Bias;
        if (exp>DECIMAL64_Ehigh) {
          exp=DECIMAL64_Ehigh;
          status|=DEC_Clamped;
          }
        }
      comb=(exp>>5) & 0x18;
      }
     else {
      uInt msd;
      Int pad=0;


      exp=(uInt)(dn->exponent+DECIMAL64_Bias);
      if (exp>DECIMAL64_Ehigh) {
        pad=exp-DECIMAL64_Ehigh;
        exp=DECIMAL64_Ehigh;
        status|=DEC_Clamped;
        }


      if (DECDPUN==3 && pad==0) {
        uInt dpd[6]={0,0,0,0,0,0};
        uInt i;
        Int d=dn->digits;
        for (i=0; d>0; i++, d-=3) dpd[i]=BIN2DPD[dn->lsu[i]];
        targar[0] =dpd[0];
        targar[0]|=dpd[1]<<10;
        targar[0]|=dpd[2]<<20;
        if (dn->digits>6) {
          targar[0]|=dpd[3]<<30;
          targar[1] =dpd[3]>>2;
          targar[1]|=dpd[4]<<8;
          }
        msd=dpd[5];
        }
       else {
        decDigitsToDPD(dn, targar, pad);

        msd=targar[1]>>18;
        targar[1]&=0x0003ffff;
        }


      if (msd>=8) comb=0x18 | ((exp>>7) & 0x06) | (msd & 0x01);
             else comb=((exp>>5) & 0x18) | msd;
      }
    targar[1]|=comb<<26;
    targar[1]|=(exp&0xff)<<18;
    }

  if (dn->bits&DECNEG) targar[1]|=0x80000000;


  if (DECLITEND) {

    UBFROMUI(d64->bytes, targar[0]);
    UBFROMUI(d64->bytes+4, targar[1]);
    }
   else {

    UBFROMUI(d64->bytes, targar[1]);
    UBFROMUI(d64->bytes+4, targar[0]);
    }

  if (status!=0) decContextSetStatus(set, status);

  return d64;
  }
