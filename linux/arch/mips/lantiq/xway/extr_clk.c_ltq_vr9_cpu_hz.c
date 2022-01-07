
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGU_SYS_XRX ;
 unsigned long CLOCK_125M ;
 unsigned long CLOCK_167M ;
 unsigned long CLOCK_196_608M ;
 unsigned long CLOCK_333M ;
 unsigned long CLOCK_393M ;
 unsigned long CLOCK_500M ;
 unsigned long CLOCK_600M ;
 int ltq_cgu_r32 (int ) ;

unsigned long ltq_vr9_cpu_hz(void)
{
 unsigned int cpu_sel;
 unsigned long clk;

 cpu_sel = (ltq_cgu_r32(CGU_SYS_XRX) >> 4) & 0xf;

 switch (cpu_sel) {
 case 0:
  clk = CLOCK_600M;
  break;
 case 1:
  clk = CLOCK_500M;
  break;
 case 2:
  clk = CLOCK_393M;
  break;
 case 3:
  clk = CLOCK_333M;
  break;
 case 5:
 case 6:
  clk = CLOCK_196_608M;
  break;
 case 7:
  clk = CLOCK_167M;
  break;
 case 4:
 case 8:
 case 9:
  clk = CLOCK_125M;
  break;
 default:
  clk = 0;
  break;
 }

 return clk;
}
