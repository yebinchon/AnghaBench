
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_mcck_disable () ;

void arch_cpu_idle_enter(void)
{
 local_mcck_disable();
}
