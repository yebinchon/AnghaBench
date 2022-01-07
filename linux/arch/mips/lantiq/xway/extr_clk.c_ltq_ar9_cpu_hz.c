
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT (int) ;
 int CGU_SYS ;
 unsigned long ltq_ar9_fpi_hz () ;
 unsigned long ltq_ar9_sys_hz () ;
 int ltq_cgu_r32 (int ) ;

unsigned long ltq_ar9_cpu_hz(void)
{
 if (ltq_cgu_r32(CGU_SYS) & BIT(2))
  return ltq_ar9_fpi_hz();
 else
  return ltq_ar9_sys_hz();
}
