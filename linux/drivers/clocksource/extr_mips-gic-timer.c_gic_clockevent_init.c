
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUHP_AP_MIPS_GIC_TIMER_STARTING ;
 int ENXIO ;
 int cpuhp_setup_state (int ,char*,int ,int ) ;
 int gic_compare_irqaction ;
 int gic_dying_cpu ;
 int gic_frequency ;
 int gic_starting_cpu ;
 int gic_timer_irq ;
 int pr_err (char*,int ,int) ;
 int setup_percpu_irq (int ,int *) ;

__attribute__((used)) static int gic_clockevent_init(void)
{
 int ret;

 if (!gic_frequency)
  return -ENXIO;

 ret = setup_percpu_irq(gic_timer_irq, &gic_compare_irqaction);
 if (ret < 0) {
  pr_err("IRQ %d setup failed (%d)\n", gic_timer_irq, ret);
  return ret;
 }

 cpuhp_setup_state(CPUHP_AP_MIPS_GIC_TIMER_STARTING,
     "clockevents/mips/gic/timer:starting",
     gic_starting_cpu, gic_dying_cpu);
 return 0;
}
