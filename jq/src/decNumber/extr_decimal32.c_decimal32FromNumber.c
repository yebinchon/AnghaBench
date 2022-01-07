
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uInt ;
struct TYPE_15__ {int bytes; } ;
typedef TYPE_1__ decimal32 ;
struct TYPE_16__ {scalar_t__ exponent; int digits; int bits; scalar_t__* lsu; } ;
typedef TYPE_2__ decNumber ;
struct TYPE_17__ {int status; int round; } ;
typedef TYPE_3__ decContext ;
typedef scalar_t__ Int ;


 int* BIN2DPD ;
 int DECDPUN ;
 scalar_t__ DECIMAL32_Bias ;
 int DECIMAL32_Ehigh ;
 scalar_t__ DECIMAL32_Emax ;
 scalar_t__ DECIMAL32_Emin ;
 int DECIMAL32_Pmax ;
 int DECIMAL_Inf ;
 int DECIMAL_NaN ;
 int DECIMAL_sNaN ;
 int DECINF ;
 int DECNAN ;
 int DECNEG ;
 int DECSPECIAL ;
 int DEC_Clamped ;
 int DEC_INIT_DECIMAL32 ;
 int UBFROMUI (int ,int) ;
 int decContextDefault (TYPE_3__*,int ) ;
 int decContextSetStatus (TYPE_3__*,int) ;
 int decDigitsToDPD (TYPE_2__ const*,int*,scalar_t__) ;
 scalar_t__ decNumberIsZero (TYPE_2__ const*) ;
 int decNumberPlus (TYPE_2__*,TYPE_2__ const*,TYPE_3__*) ;

decimal32 * decimal32FromNumber(decimal32 *d32, const decNumber *dn,
                              decContext *set) {
  uInt status=0;
  Int ae;
  decNumber dw;
  decContext dc;
  uInt comb, exp;
  uInt uiwork;
  uInt targ=0;






  ae=dn->exponent+dn->digits-1;
  if (dn->digits>DECIMAL32_Pmax
   || ae>DECIMAL32_Emax
   || ae<DECIMAL32_Emin) {
    decContextDefault(&dc, DEC_INIT_DECIMAL32);
    dc.round=set->round;
    decNumberPlus(&dw, dn, &dc);

    dw.bits|=dn->bits&DECNEG;
    status=dc.status;
    dn=&dw;
    }

  if (dn->bits&DECSPECIAL) {
    if (dn->bits&DECINF) targ=DECIMAL_Inf<<24;
     else {
      if ((*dn->lsu!=0 || dn->digits>1)
       && (dn->digits<DECIMAL32_Pmax)) {
        decDigitsToDPD(dn, &targ, 0);
        }
      if (dn->bits&DECNAN) targ|=DECIMAL_NaN<<24;
       else targ|=DECIMAL_sNaN<<24;
      }
    }

   else {
    if (decNumberIsZero(dn)) {

      if (dn->exponent<-DECIMAL32_Bias) {
        exp=0;
        status|=DEC_Clamped;
        }
       else {
        exp=dn->exponent+DECIMAL32_Bias;
        if (exp>DECIMAL32_Ehigh) {
          exp=DECIMAL32_Ehigh;
          status|=DEC_Clamped;
          }
        }
      comb=(exp>>3) & 0x18;
      }
     else {
      uInt msd;
      Int pad=0;


      exp=(uInt)(dn->exponent+DECIMAL32_Bias);
      if (exp>DECIMAL32_Ehigh) {
        pad=exp-DECIMAL32_Ehigh;
        exp=DECIMAL32_Ehigh;
        status|=DEC_Clamped;
        }


      if (DECDPUN==3 && pad==0) {
        targ=BIN2DPD[dn->lsu[0]];
        if (dn->digits>3) targ|=(uInt)(BIN2DPD[dn->lsu[1]])<<10;
        msd=(dn->digits==7 ? dn->lsu[2] : 0);
        }
       else {
        decDigitsToDPD(dn, &targ, pad);

        msd=targ>>20;
        targ&=0x000fffff;
        }


      if (msd>=8) comb=0x18 | ((exp>>5) & 0x06) | (msd & 0x01);
             else comb=((exp>>3) & 0x18) | msd;
      }
    targ|=comb<<26;
    targ|=(exp&0x3f)<<20;
    }

  if (dn->bits&DECNEG) targ|=0x80000000;


  UBFROMUI(d32->bytes, targ);

  if (status!=0) decContextSetStatus(set, status);

  return d32;
  }
