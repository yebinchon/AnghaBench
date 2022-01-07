
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uInt ;
typedef int decFloat ;
typedef int decContext ;
typedef int Int ;


 scalar_t__ DFISINF (int const*) ;
 int DFISINT (int const*) ;
 scalar_t__ DFISNAN (int const*) ;
 scalar_t__ DFISSIGNED (int const*) ;
 int DFWORD (int const*,int) ;
 int* DPD2BIN ;
 scalar_t__ GETEXPUN (int *) ;
 int SCALEBMAX ;
 int decFloatDigits (int const*) ;
 int * decFloatSetExponent (int *,int *,scalar_t__) ;
 int * decInfinity (int *,int const*) ;
 int * decInvalid (int *,int *) ;
 int * decNaNs (int *,int const*,int const*,int *) ;

decFloat * decFloatScaleB(decFloat *result,
                          const decFloat *dfl, const decFloat *dfr,
                          decContext *set) {
  uInt digits;
  Int expr;

  if (DFISNAN(dfl)||DFISNAN(dfr)) return decNaNs(result, dfl, dfr, set);
  if (!DFISINT(dfr)) return decInvalid(result, set);
  digits=decFloatDigits(dfr);
  if (expr>SCALEBMAX) return decInvalid(result, set);

  if (DFISINF(dfl)) return decInfinity(result, dfl);
  if (DFISSIGNED(dfr)) expr=-expr;

  *result=*dfl;
  return decFloatSetExponent(result, set, GETEXPUN(result)+expr);
  }
