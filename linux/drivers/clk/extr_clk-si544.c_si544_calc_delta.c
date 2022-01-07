
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64 ;
typedef scalar_t__ s32 ;


 int DELTA_M_MAX ;
 scalar_t__ div_s64 (int,scalar_t__) ;

__attribute__((used)) static s32 si544_calc_delta(s32 delta, s32 max_delta)
{
 s64 n = (s64)delta * DELTA_M_MAX;

 return div_s64(n, max_delta);
}
