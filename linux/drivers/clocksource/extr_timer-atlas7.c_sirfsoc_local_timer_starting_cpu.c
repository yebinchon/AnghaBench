
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {int irq; struct clock_event_device* dev_id; } ;
struct clock_event_device {char* name; int rating; unsigned long max_delta_ticks; int min_delta_ticks; int irq; int cpumask; void* min_delta_ns; void* max_delta_ns; int set_next_event; void* tick_resume; void* set_state_oneshot; void* set_state_shutdown; int features; } ;


 int BUG_ON (int ) ;
 int CLOCK_EVT_FEAT_ONESHOT ;
 int atlas7_timer_rate ;
 void* clockevent_delta2ns (int,struct clock_event_device*) ;
 int clockevents_calc_mult_shift (struct clock_event_device*,int ,int) ;
 int clockevents_register_device (struct clock_event_device*) ;
 int cpumask_of (unsigned int) ;
 int irq_force_affinity (int ,int ) ;
 struct clock_event_device* per_cpu_ptr (int ,unsigned int) ;
 int setup_irq (int ,struct irqaction*) ;
 int sirfsoc_clockevent ;
 struct irqaction sirfsoc_timer1_irq ;
 struct irqaction sirfsoc_timer_irq ;
 int sirfsoc_timer_set_next_event ;
 void* sirfsoc_timer_shutdown ;

__attribute__((used)) static int sirfsoc_local_timer_starting_cpu(unsigned int cpu)
{
 struct clock_event_device *ce = per_cpu_ptr(sirfsoc_clockevent, cpu);
 struct irqaction *action;

 if (cpu == 0)
  action = &sirfsoc_timer_irq;
 else
  action = &sirfsoc_timer1_irq;

 ce->irq = action->irq;
 ce->name = "local_timer";
 ce->features = CLOCK_EVT_FEAT_ONESHOT;
 ce->rating = 200;
 ce->set_state_shutdown = sirfsoc_timer_shutdown;
 ce->set_state_oneshot = sirfsoc_timer_shutdown;
 ce->tick_resume = sirfsoc_timer_shutdown;
 ce->set_next_event = sirfsoc_timer_set_next_event;
 clockevents_calc_mult_shift(ce, atlas7_timer_rate, 60);
 ce->max_delta_ns = clockevent_delta2ns(-2, ce);
 ce->max_delta_ticks = (unsigned long)-2;
 ce->min_delta_ns = clockevent_delta2ns(2, ce);
 ce->min_delta_ticks = 2;
 ce->cpumask = cpumask_of(cpu);

 action->dev_id = ce;
 BUG_ON(setup_irq(ce->irq, action));
 irq_force_affinity(action->irq, cpumask_of(cpu));

 clockevents_register_device(ce);
 return 0;
}
