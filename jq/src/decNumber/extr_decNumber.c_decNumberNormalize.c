
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decNumber ;
typedef int decContext ;


 int * decNumberReduce (int *,int const*,int *) ;

decNumber * decNumberNormalize(decNumber *res, const decNumber *rhs,
                               decContext *set) {
  return decNumberReduce(res, rhs, set);
  }
