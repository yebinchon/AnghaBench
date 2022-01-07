
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decFloat ;


 scalar_t__ DFISSIGNED (int const*) ;
 int * decFloatCompareTotal (int *,int const*,int const*) ;
 int decFloatCopyAbs (int *,int const*) ;

decFloat * decFloatCompareTotalMag(decFloat *result,
                                const decFloat *dfl, const decFloat *dfr) {
  decFloat a, b;

  if (DFISSIGNED(dfl)) {
    decFloatCopyAbs(&a, dfl);
    dfl=&a;
    }
  if (DFISSIGNED(dfr)) {
    decFloatCopyAbs(&b, dfr);
    dfr=&b;
    }
  return decFloatCompareTotal(result, dfl, dfr);
  }
