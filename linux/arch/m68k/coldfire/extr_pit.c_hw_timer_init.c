
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int irq_handler_t ;
struct TYPE_4__ {int max_delta_ticks; int min_delta_ticks; void* min_delta_ns; void* max_delta_ns; int mult; int cpumask; } ;


 int FREQ ;
 int MCF_IRQ_PIT1 ;
 int NSEC_PER_SEC ;
 TYPE_1__ cf_pit_clockevent ;
 void* clockevent_delta2ns (int,TYPE_1__*) ;
 int clockevents_register_device (TYPE_1__*) ;
 int clocksource_register_hz (int *,int ) ;
 int cpumask_of (int ) ;
 int div_sc (int ,int ,int) ;
 int pit_clk ;
 int pit_irq ;
 int setup_irq (int ,int *) ;
 int smp_processor_id () ;

void hw_timer_init(irq_handler_t handler)
{
 cf_pit_clockevent.cpumask = cpumask_of(smp_processor_id());
 cf_pit_clockevent.mult = div_sc(FREQ, NSEC_PER_SEC, 32);
 cf_pit_clockevent.max_delta_ns =
  clockevent_delta2ns(0xFFFF, &cf_pit_clockevent);
 cf_pit_clockevent.max_delta_ticks = 0xFFFF;
 cf_pit_clockevent.min_delta_ns =
  clockevent_delta2ns(0x3f, &cf_pit_clockevent);
 cf_pit_clockevent.min_delta_ticks = 0x3f;
 clockevents_register_device(&cf_pit_clockevent);

 setup_irq(MCF_IRQ_PIT1, &pit_irq);

 clocksource_register_hz(&pit_clk, FREQ);
}
