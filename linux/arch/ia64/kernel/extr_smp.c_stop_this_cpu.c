
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_halt () ;
 int local_irq_disable () ;
 int max_xtp () ;
 int set_cpu_online (int ,int) ;
 int smp_processor_id () ;

__attribute__((used)) static void
stop_this_cpu(void)
{



 set_cpu_online(smp_processor_id(), 0);
 max_xtp();
 local_irq_disable();
 cpu_halt();
}
