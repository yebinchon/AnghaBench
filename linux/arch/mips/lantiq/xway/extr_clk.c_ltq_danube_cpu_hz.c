
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGU_SYS ;
 unsigned long CLOCK_333M ;
 unsigned long DDR_HZ ;
 int ltq_cgu_r32 (int ) ;

unsigned long ltq_danube_cpu_hz(void)
{
 switch (ltq_cgu_r32(CGU_SYS) & 0xc) {
 case 0:
  return CLOCK_333M;
 case 4:
  return DDR_HZ;
 case 8:
  return DDR_HZ << 1;
 default:
  return DDR_HZ >> 1;
 }
}
