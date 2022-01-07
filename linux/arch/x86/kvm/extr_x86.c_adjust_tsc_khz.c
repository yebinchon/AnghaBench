
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int s32 ;


 int do_div (int,int) ;

__attribute__((used)) static u32 adjust_tsc_khz(u32 khz, s32 ppm)
{
 u64 v = (u64)khz * (1000000 + ppm);
 do_div(v, 1000000);
 return v;
}
