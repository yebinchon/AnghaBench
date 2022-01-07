
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rounding { ____Placeholder_rounding } rounding ;
typedef int decFloat ;
typedef int decContext ;


 int * decToIntegral (int *,int const*,int *,int,int ) ;

decFloat * decFloatToIntegralValue(decFloat *result, const decFloat *df,
                                   decContext *set, enum rounding round) {
  return decToIntegral(result, df, set, round, 0);}
