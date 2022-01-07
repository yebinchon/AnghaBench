
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGU_SYS ;
 unsigned long CLOCK_250M ;
 unsigned long CLOCK_400M ;
 int ltq_cgu_r32 (int ) ;

unsigned long ltq_ar10_pp32_hz(void)
{
 unsigned int clksys = (ltq_cgu_r32(CGU_SYS) >> 16) & 0x7;
 unsigned long clk;

 switch (clksys) {
 case 1:
  clk = CLOCK_250M;
  break;
 case 4:
  clk = CLOCK_400M;
  break;
 default:
  clk = CLOCK_250M;
  break;
 }

 return clk;
}
