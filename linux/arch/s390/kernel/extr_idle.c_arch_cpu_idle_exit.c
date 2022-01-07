
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CIF_MCCK_PENDING ;
 int local_mcck_enable () ;
 int s390_handle_mcck () ;
 scalar_t__ test_cpu_flag (int ) ;

void arch_cpu_idle_exit(void)
{
 local_mcck_enable();
 if (test_cpu_flag(CIF_MCCK_PENDING))
  s390_handle_mcck();
}
