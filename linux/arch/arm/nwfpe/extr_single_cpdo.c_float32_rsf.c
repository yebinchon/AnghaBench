
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roundingData {int dummy; } ;
typedef int float32 ;


 int float32_sub (struct roundingData*,int ,int ) ;

__attribute__((used)) static float32 float32_rsf(struct roundingData *roundData, float32 rFn, float32 rFm)
{
 return float32_sub(roundData, rFm, rFn);
}
