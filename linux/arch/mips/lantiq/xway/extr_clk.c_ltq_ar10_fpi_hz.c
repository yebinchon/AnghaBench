
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGU_IF_CLK_AR10 ;
 unsigned long CLOCK_125M ;
 unsigned long CLOCK_150M ;
 unsigned long CLOCK_250M ;
 unsigned long CLOCK_300M ;
 int ltq_cgu_r32 (int ) ;

unsigned long ltq_ar10_fpi_hz(void)
{
 int freq_fpi = (ltq_cgu_r32(CGU_IF_CLK_AR10) >> 25) & 0xf;

 switch (freq_fpi) {
 case 1:
  return CLOCK_300M;
 case 5:
  return CLOCK_250M;
 case 2:
  return CLOCK_150M;
 case 6:
  return CLOCK_125M;

 default:
  return CLOCK_125M;
 }
}
