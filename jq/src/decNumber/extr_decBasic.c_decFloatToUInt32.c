
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uInt ;
typedef enum rounding { ____Placeholder_rounding } rounding ;
typedef int decFloat ;
typedef int decContext ;


 int decToInt32 (int const*,int *,int,int ,int) ;

uInt decFloatToUInt32(const decFloat *df, decContext *set,
                      enum rounding round) {
  return decToInt32(df, set, round, 0, 1);}
