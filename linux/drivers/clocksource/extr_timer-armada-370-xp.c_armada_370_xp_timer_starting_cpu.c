
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clock_event_device {char* name; int features; int shift; int rating; int irq; int cpumask; void* tick_resume; void* set_state_oneshot; int set_state_periodic; void* set_state_shutdown; int set_next_event; } ;


 int CLOCK_EVT_FEAT_ONESHOT ;
 int CLOCK_EVT_FEAT_PERIODIC ;
 int TIMER0_25MHZ ;
 int armada_370_xp_clkevt_irq ;
 int armada_370_xp_clkevt_next_event ;
 int armada_370_xp_clkevt_set_periodic ;
 void* armada_370_xp_clkevt_shutdown ;
 int armada_370_xp_evt ;
 int clockevents_config_and_register (struct clock_event_device*,int ,int,int) ;
 int cpumask_of (unsigned int) ;
 int enable_percpu_irq (int ,int ) ;
 int local_timer_ctrl_clrset (int ,int ) ;
 struct clock_event_device* per_cpu_ptr (int ,unsigned int) ;
 scalar_t__ timer25Mhz ;
 int timer_clk ;

__attribute__((used)) static int armada_370_xp_timer_starting_cpu(unsigned int cpu)
{
 struct clock_event_device *evt = per_cpu_ptr(armada_370_xp_evt, cpu);
 u32 clr = 0, set = 0;

 if (timer25Mhz)
  set = TIMER0_25MHZ;
 else
  clr = TIMER0_25MHZ;
 local_timer_ctrl_clrset(clr, set);

 evt->name = "armada_370_xp_per_cpu_tick",
 evt->features = CLOCK_EVT_FEAT_ONESHOT |
      CLOCK_EVT_FEAT_PERIODIC;
 evt->shift = 32,
 evt->rating = 300,
 evt->set_next_event = armada_370_xp_clkevt_next_event,
 evt->set_state_shutdown = armada_370_xp_clkevt_shutdown;
 evt->set_state_periodic = armada_370_xp_clkevt_set_periodic;
 evt->set_state_oneshot = armada_370_xp_clkevt_shutdown;
 evt->tick_resume = armada_370_xp_clkevt_shutdown;
 evt->irq = armada_370_xp_clkevt_irq;
 evt->cpumask = cpumask_of(cpu);

 clockevents_config_and_register(evt, timer_clk, 1, 0xfffffffe);
 enable_percpu_irq(evt->irq, 0);

 return 0;
}
