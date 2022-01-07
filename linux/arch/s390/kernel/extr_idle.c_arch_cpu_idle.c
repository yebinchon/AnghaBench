
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CIF_MCCK_PENDING ;
 int enabled_wait () ;
 int local_irq_enable () ;
 int test_cpu_flag (int ) ;

void arch_cpu_idle(void)
{
 if (!test_cpu_flag(CIF_MCCK_PENDING))

  enabled_wait();
 local_irq_enable();
}
