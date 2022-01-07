
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rounding { ____Placeholder_rounding } rounding ;
typedef int decFloat ;
typedef int decContext ;
typedef int Int ;


 int decToInt32 (int const*,int *,int,int ,int ) ;

Int decFloatToInt32(const decFloat *df, decContext *set,
                    enum rounding round) {
  return (Int)decToInt32(df, set, round, 0, 0);}
