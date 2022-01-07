
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {char* name; int features; int rating; int set_next_event; int cpumask; int irq; } ;


 int CLOCK_EVT_FEAT_C3STOP ;
 int CLOCK_EVT_FEAT_ONESHOT ;
 int IRQ_TYPE_NONE ;
 int clockevents_config_and_register (struct clock_event_device*,int ,int,int) ;
 int cpumask_of (unsigned int) ;
 int enable_percpu_irq (int ,int ) ;
 int gic_frequency ;
 int gic_next_event ;
 int gic_timer_irq ;

__attribute__((used)) static void gic_clockevent_cpu_init(unsigned int cpu,
        struct clock_event_device *cd)
{
 cd->name = "MIPS GIC";
 cd->features = CLOCK_EVT_FEAT_ONESHOT |
      CLOCK_EVT_FEAT_C3STOP;

 cd->rating = 350;
 cd->irq = gic_timer_irq;
 cd->cpumask = cpumask_of(cpu);
 cd->set_next_event = gic_next_event;

 clockevents_config_and_register(cd, gic_frequency, 0x300, 0x7fffffff);

 enable_percpu_irq(gic_timer_irq, IRQ_TYPE_NONE);
}
