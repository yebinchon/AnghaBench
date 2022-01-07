
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int cpumask; } ;


 int ARC_TIMERN_MAX ;
 int arc_clockevent_device ;
 int arc_timer_freq ;
 int arc_timer_irq ;
 int clockevents_config_and_register (struct clock_event_device*,int ,int ,int ) ;
 int cpumask_of (int ) ;
 int enable_percpu_irq (int ,int ) ;
 int smp_processor_id () ;
 struct clock_event_device* this_cpu_ptr (int *) ;

__attribute__((used)) static int arc_timer_starting_cpu(unsigned int cpu)
{
 struct clock_event_device *evt = this_cpu_ptr(&arc_clockevent_device);

 evt->cpumask = cpumask_of(smp_processor_id());

 clockevents_config_and_register(evt, arc_timer_freq, 0, ARC_TIMERN_MAX);
 enable_percpu_irq(arc_timer_irq, 0);
 return 0;
}
