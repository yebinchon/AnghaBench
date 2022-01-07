
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decFloat ;
typedef int decContext ;
typedef scalar_t__ Int ;


 scalar_t__ DFISNAN (int const*) ;
 int * decCanonical (int *,int const*) ;
 int decFloatCopyAbs (int *,int const*) ;
 int * decFloatMax (int *,int const*,int const*,int *) ;
 scalar_t__ decNumCompare (int *,int *,int ) ;

decFloat * decFloatMaxMag(decFloat *result,
                       const decFloat *dfl, const decFloat *dfr,
                       decContext *set) {
  Int comp;
  decFloat absl, absr;
  if (DFISNAN(dfl) || DFISNAN(dfr)) return decFloatMax(result, dfl, dfr, set);

  decFloatCopyAbs(&absl, dfl);
  decFloatCopyAbs(&absr, dfr);
  comp=decNumCompare(&absl, &absr, 0);
  if (comp>0) return decCanonical(result, dfl);
  if (comp<0) return decCanonical(result, dfr);
  return decFloatMax(result, dfl, dfr, set);
  }
