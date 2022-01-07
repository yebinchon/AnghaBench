
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int decFloat ;
struct TYPE_4__ {int round; } ;
typedef TYPE_1__ decContext ;


 int * decToIntegral (int *,int const*,TYPE_1__*,int ,int) ;

decFloat * decFloatToIntegralExact(decFloat *result, const decFloat *df,
                                   decContext *set) {
  return decToIntegral(result, df, set, set->round, 1);}
