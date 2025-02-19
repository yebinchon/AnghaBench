
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGU_SYS_XRX ;
 unsigned int CLOCK_500M ;
 unsigned int CLOCK_600M ;
 int ltq_cgu_r32 (int ) ;

unsigned long ltq_ar10_cpu_hz(void)
{
 unsigned int clksys;
 int cpu_fs = (ltq_cgu_r32(CGU_SYS_XRX) >> 8) & 0x1;
 int freq_div = (ltq_cgu_r32(CGU_SYS_XRX) >> 4) & 0x7;

 switch (cpu_fs) {
 case 0:
  clksys = CLOCK_500M;
  break;
 case 1:
  clksys = CLOCK_600M;
  break;
 default:
  clksys = CLOCK_500M;
  break;
 }

 switch (freq_div) {
 case 0:
  return clksys;
 case 1:
  return clksys >> 1;
 case 2:
  return clksys >> 2;
 default:
  return clksys;
 }
}
