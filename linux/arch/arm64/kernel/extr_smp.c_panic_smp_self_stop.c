
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_cpu_stop () ;

void panic_smp_self_stop(void)
{
 local_cpu_stop();
}
