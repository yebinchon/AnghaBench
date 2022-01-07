
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uInt ;
typedef int decFloat ;


 scalar_t__ DFISINF (int const*) ;
 scalar_t__ DFISNAN (int const*) ;
 scalar_t__ DFISSPECIAL (int const*) ;
 scalar_t__ GETEXP (int const*) ;

uInt decFloatSameQuantum(const decFloat *dfl, const decFloat *dfr) {
  if (DFISSPECIAL(dfl) || DFISSPECIAL(dfr)) {
    if (DFISNAN(dfl) && DFISNAN(dfr)) return 1;
    if (DFISINF(dfl) && DFISINF(dfr)) return 1;
    return 0;
    }
  if (GETEXP(dfl)==GETEXP(dfr)) return 1;
  return 0;
  }
