
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uInt ;
typedef int uByte ;
typedef int decFloat ;
struct TYPE_8__ {int status; } ;
typedef TYPE_1__ decContext ;
struct TYPE_9__ {int sign; int exponent; int * msd; int * lsd; } ;
typedef TYPE_2__ bcdnum ;
typedef int Int ;


 int DECFLOAT_Sign ;
 int DECPMAX ;
 scalar_t__ DECWORDS ;
 scalar_t__ DFISINF (int const*) ;
 int DFISINT (int const*) ;
 scalar_t__ DFISNAN (int const*) ;
 scalar_t__ DFISSIGNED (int const*) ;
 int DFWORD (int const*,scalar_t__) ;
 int* DPD2BIN ;
 int GETCOEFF (int const*,int *) ;
 int GETEXPUN (int const*) ;
 int PHALF ;
 int abs (int) ;
 int * decCanonical (int *,int const*) ;
 int decFinalize (int *,TYPE_2__*,TYPE_1__*) ;
 int decFloatDigits (int const*) ;
 int * decInfinity (int *,int const*) ;
 int * decInvalid (int *,TYPE_1__*) ;
 int * decNaNs (int *,int const*,int const*,TYPE_1__*) ;
 int memcpy (int *,int *,int) ;

decFloat * decFloatRotate(decFloat *result,
                         const decFloat *dfl, const decFloat *dfr,
                         decContext *set) {
  Int rotate;
  uByte buf[DECPMAX+PHALF];
  uInt digits, savestat;
  bcdnum num;
  uByte *ub;

  if (DFISNAN(dfl)||DFISNAN(dfr)) return decNaNs(result, dfl, dfr, set);
  if (!DFISINT(dfr)) return decInvalid(result, set);
  digits=decFloatDigits(dfr);
  if (digits>2) return decInvalid(result, set);
  rotate=DPD2BIN[DFWORD(dfr, DECWORDS-1)&0x3ff];
  if (rotate>DECPMAX) return decInvalid(result, set);

  if (DFISINF(dfl)) return decInfinity(result, dfl);

  if (rotate==0 || rotate==DECPMAX) return decCanonical(result, dfl);



  if (DFISSIGNED(dfr)) rotate=-rotate;
  if (abs(rotate)>PHALF) {
    if (rotate<0) rotate=DECPMAX+rotate;
     else rotate=rotate-DECPMAX;
    }


  ub=buf;
  if (rotate<0) ub+=PHALF;
  GETCOEFF(dfl, ub);

  if (rotate<0) {
    memcpy(buf, buf+DECPMAX, PHALF);
    num.msd=buf+PHALF+rotate;
    }
   else {
    memcpy(buf+DECPMAX, buf, PHALF);
    num.msd=buf+rotate;
    }

  num.lsd=num.msd+DECPMAX-1;
  num.sign=DFWORD(dfl, 0)&DECFLOAT_Sign;
  num.exponent=GETEXPUN(dfl);
  savestat=set->status;
  decFinalize(result, &num, set);
  set->status=savestat;
  return result;
  }
