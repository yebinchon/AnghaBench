
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decFloat ;
typedef int decContext ;
typedef scalar_t__ Int ;


 scalar_t__ DFISNAN (int const*) ;
 scalar_t__ DFISSNAN (int const*) ;
 int * decCanonical (int *,int const*) ;
 int * decNaNs (int *,int const*,int const*,int *) ;
 scalar_t__ decNumCompare (int const*,int const*,int) ;

decFloat * decFloatMax(decFloat *result,
                       const decFloat *dfl, const decFloat *dfr,
                       decContext *set) {
  Int comp;
  if (DFISNAN(dfl)) {

    if (DFISNAN(dfr) || DFISSNAN(dfl)) return decNaNs(result, dfl, dfr, set);
    return decCanonical(result, dfr);
    }
  if (DFISNAN(dfr)) {

    if (DFISSNAN(dfr)) return decNaNs(result, dfl, dfr, set);
    return decCanonical(result, dfl);
    }


  comp=decNumCompare(dfl, dfr, 1);
  if (comp>=0) return decCanonical(result, dfl);
  return decCanonical(result, dfr);
  }
