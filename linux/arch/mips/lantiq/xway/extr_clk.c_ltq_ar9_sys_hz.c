
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGU_SYS ;
 unsigned long CLOCK_333M ;
 unsigned long CLOCK_393M ;
 int ltq_cgu_r32 (int ) ;

unsigned long ltq_ar9_sys_hz(void)
{
 if (((ltq_cgu_r32(CGU_SYS) >> 3) & 0x3) == 0x2)
  return CLOCK_393M;
 return CLOCK_333M;
}
