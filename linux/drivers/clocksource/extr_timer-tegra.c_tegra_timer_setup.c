
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq; } ;
struct timer_of {TYPE_1__ clkevt; } ;


 scalar_t__ TIMER_PCR ;
 int TIMER_PCR_INTR_CLR ;
 scalar_t__ TIMER_PTV ;
 int clockevents_config_and_register (TYPE_1__*,int ,int,int) ;
 int cpumask_of (unsigned int) ;
 int enable_irq (int ) ;
 int irq_force_affinity (int ,int ) ;
 struct timer_of* per_cpu_ptr (int *,unsigned int) ;
 int tegra_to ;
 scalar_t__ timer_of_base (struct timer_of*) ;
 int timer_of_rate (struct timer_of*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int tegra_timer_setup(unsigned int cpu)
{
 struct timer_of *to = per_cpu_ptr(&tegra_to, cpu);

 writel_relaxed(0, timer_of_base(to) + TIMER_PTV);
 writel_relaxed(TIMER_PCR_INTR_CLR, timer_of_base(to) + TIMER_PCR);

 irq_force_affinity(to->clkevt.irq, cpumask_of(cpu));
 enable_irq(to->clkevt.irq);
 clockevents_config_and_register(&to->clkevt, timer_of_rate(to),
     1,
     0x1fffffff + 1);

 return 0;
}
