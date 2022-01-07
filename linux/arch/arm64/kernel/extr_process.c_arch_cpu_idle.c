
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PWR_EVENT_EXIT ;
 int cpu_do_idle () ;
 int local_irq_enable () ;
 int smp_processor_id () ;
 int trace_cpu_idle_rcuidle (int,int ) ;

void arch_cpu_idle(void)
{




 trace_cpu_idle_rcuidle(1, smp_processor_id());
 cpu_do_idle();
 local_irq_enable();
 trace_cpu_idle_rcuidle(PWR_EVENT_EXIT, smp_processor_id());
}
