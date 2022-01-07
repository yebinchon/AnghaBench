
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGU_SYS ;
 unsigned long CLOCK_288M ;
 unsigned long CLOCK_432M ;
 unsigned long CLOCK_500M ;
 int ltq_cgu_r32 (int ) ;

unsigned long ltq_vr9_pp32_hz(void)
{
 unsigned int clksys = (ltq_cgu_r32(CGU_SYS) >> 16) & 0x7;
 unsigned long clk;

 switch (clksys) {
 case 0:
  clk = CLOCK_500M;
  break;
 case 1:
  clk = CLOCK_432M;
  break;
 case 2:
  clk = CLOCK_288M;
  break;
 default:
  clk = CLOCK_500M;
  break;
 }

 return clk;
}
