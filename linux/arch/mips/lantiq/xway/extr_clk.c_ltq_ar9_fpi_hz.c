
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT (int ) ;
 int CGU_SYS ;
 unsigned long ltq_ar9_sys_hz () ;
 int ltq_cgu_r32 (int ) ;

unsigned long ltq_ar9_fpi_hz(void)
{
 unsigned long sys = ltq_ar9_sys_hz();

 if (ltq_cgu_r32(CGU_SYS) & BIT(0))
  return sys / 3;
 else
  return sys / 2;
}
