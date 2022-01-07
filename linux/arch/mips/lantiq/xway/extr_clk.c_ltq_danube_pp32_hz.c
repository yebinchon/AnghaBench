
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGU_SYS ;
 unsigned long CLOCK_133M ;
 unsigned long CLOCK_222M ;
 unsigned long CLOCK_240M ;
 unsigned long CLOCK_266M ;
 int ltq_cgu_r32 (int ) ;

unsigned long ltq_danube_pp32_hz(void)
{
 unsigned int clksys = (ltq_cgu_r32(CGU_SYS) >> 7) & 3;
 unsigned long clk;

 switch (clksys) {
 case 1:
  clk = CLOCK_240M;
  break;
 case 2:
  clk = CLOCK_222M;
  break;
 case 3:
  clk = CLOCK_133M;
  break;
 default:
  clk = CLOCK_266M;
  break;
 }

 return clk;
}
