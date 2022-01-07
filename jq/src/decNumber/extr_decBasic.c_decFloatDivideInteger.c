
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decFloat ;
typedef int decContext ;


 int DIVIDEINT ;
 int * decDivide (int *,int const*,int const*,int *,int ) ;

decFloat * decFloatDivideInteger(decFloat *result,
                             const decFloat *dfl, const decFloat *dfr,
                             decContext *set) {
  return decDivide(result, dfl, dfr, set, DIVIDEINT);
  }
