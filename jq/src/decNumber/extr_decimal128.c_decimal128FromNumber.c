
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uInt ;
struct TYPE_15__ {scalar_t__ bytes; } ;
typedef TYPE_1__ decimal128 ;
struct TYPE_16__ {scalar_t__ exponent; int digits; int bits; scalar_t__* lsu; } ;
typedef TYPE_2__ decNumber ;
struct TYPE_17__ {int status; int round; } ;
typedef TYPE_3__ decContext ;
typedef scalar_t__ Int ;


 scalar_t__ DECIMAL128_Bias ;
 int DECIMAL128_Ehigh ;
 scalar_t__ DECIMAL128_Emax ;
 scalar_t__ DECIMAL128_Emin ;
 int DECIMAL128_Pmax ;
 int DECIMAL_Inf ;
 int DECIMAL_NaN ;
 int DECIMAL_sNaN ;
 int DECINF ;
 scalar_t__ DECLITEND ;
 int DECNAN ;
 int DECNEG ;
 int DECSPECIAL ;
 int DEC_Clamped ;
 int DEC_INIT_DECIMAL128 ;
 int UBFROMUI (scalar_t__,int) ;
 int decContextDefault (TYPE_3__*,int ) ;
 int decContextSetStatus (TYPE_3__*,int) ;
 int decDigitsToDPD (TYPE_2__ const*,int*,scalar_t__) ;
 scalar_t__ decNumberIsZero (TYPE_2__ const*) ;
 int decNumberPlus (TYPE_2__*,TYPE_2__ const*,TYPE_3__*) ;
 int targhi ;
 int targlo ;
 int targmh ;
 int targml ;

decimal128 * decimal128FromNumber(decimal128 *d128, const decNumber *dn,
                                  decContext *set) {
  uInt status=0;
  Int ae;
  decNumber dw;
  decContext dc;
  uInt comb, exp;
  uInt uiwork;
  uInt targar[4]={0,0,0,0};
  ae=dn->exponent+dn->digits-1;
  if (dn->digits>DECIMAL128_Pmax
   || ae>DECIMAL128_Emax
   || ae<DECIMAL128_Emin) {
    decContextDefault(&dc, DEC_INIT_DECIMAL128);
    dc.round=set->round;
    decNumberPlus(&dw, dn, &dc);

    dw.bits|=dn->bits&DECNEG;
    status=dc.status;
    dn=&dw;
    }

  if (dn->bits&DECSPECIAL) {
    if (dn->bits&DECINF) targar[3]=DECIMAL_Inf<<24;
     else {
      if ((*dn->lsu!=0 || dn->digits>1)
       && (dn->digits<DECIMAL128_Pmax)) {
        decDigitsToDPD(dn, targar, 0);
        }
      if (dn->bits&DECNAN) targar[3]|=DECIMAL_NaN<<24;
       else targar[3]|=DECIMAL_sNaN<<24;
      }
    }

   else {
    if (decNumberIsZero(dn)) {

      if (dn->exponent<-DECIMAL128_Bias) {
        exp=0;
        status|=DEC_Clamped;
        }
       else {
        exp=dn->exponent+DECIMAL128_Bias;
        if (exp>DECIMAL128_Ehigh) {
          exp=DECIMAL128_Ehigh;
          status|=DEC_Clamped;
          }
        }
      comb=(exp>>9) & 0x18;
      }
     else {
      uInt msd;
      Int pad=0;


      exp=(uInt)(dn->exponent+DECIMAL128_Bias);
      if (exp>DECIMAL128_Ehigh) {
        pad=exp-DECIMAL128_Ehigh;
        exp=DECIMAL128_Ehigh;
        status|=DEC_Clamped;
        }


      decDigitsToDPD(dn, targar, pad);

      msd=targar[3]>>14;
      targar[3]&=0x00003fff;


      if (msd>=8) comb=0x18 | ((exp>>11) & 0x06) | (msd & 0x01);
             else comb=((exp>>9) & 0x18) | msd;
      }
    targar[3]|=comb<<26;
    targar[3]|=(exp&0xfff)<<14;
    }

  if (dn->bits&DECNEG) targar[3]|=0x80000000;


  if (DECLITEND) {

    UBFROMUI(d128->bytes, targar[0]);
    UBFROMUI(d128->bytes+4, targar[1]);
    UBFROMUI(d128->bytes+8, targar[2]);
    UBFROMUI(d128->bytes+12, targar[3]);
    }
   else {

    UBFROMUI(d128->bytes, targar[3]);
    UBFROMUI(d128->bytes+4, targar[2]);
    UBFROMUI(d128->bytes+8, targar[1]);
    UBFROMUI(d128->bytes+12, targar[0]);
    }

  if (status!=0) decContextSetStatus(set, status);

  return d128;
  }
