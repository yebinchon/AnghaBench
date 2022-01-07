
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decFloat ;


 int * decCanonical (int *,int const*) ;

decFloat * decFloatCanonical(decFloat *result, const decFloat *df) {
  return decCanonical(result, df);
  }
