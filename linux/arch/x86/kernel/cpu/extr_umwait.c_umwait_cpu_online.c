
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int umwait_update_control_msr (int *) ;

__attribute__((used)) static int umwait_cpu_online(unsigned int cpu)
{
 local_irq_disable();
 umwait_update_control_msr(((void*)0));
 local_irq_enable();
 return 0;
}
