
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const decFloat ;
typedef int decContext ;


 int DFISCC01 (int const*) ;
 int DFISUINT01 (int const*) ;
 int DFWORD (int const*,int) ;
 int ZEROWORD ;
 int const* decInvalid (int const*,int *) ;

decFloat * decFloatXor(decFloat *result,
                       const decFloat *dfl, const decFloat *dfr,
                       decContext *set) {
  if (!DFISUINT01(dfl) || !DFISUINT01(dfr)
   || !DFISCC01(dfl) || !DFISCC01(dfr)) return decInvalid(result, set);
  return result;
  }
