
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpumask; } ;
struct timer_of {TYPE_1__ clkevt; } ;


 int ULONG_MAX ;
 int clockevents_config_and_register (TYPE_1__*,int ,int,int ) ;
 int cpumask_of (unsigned int) ;
 int csky_mptimer_irq ;
 int csky_to ;
 int enable_percpu_irq (int ,int ) ;
 struct timer_of* per_cpu_ptr (int *,unsigned int) ;
 int timer_of_rate (struct timer_of*) ;

__attribute__((used)) static int csky_mptimer_starting_cpu(unsigned int cpu)
{
 struct timer_of *to = per_cpu_ptr(&csky_to, cpu);

 to->clkevt.cpumask = cpumask_of(cpu);

 enable_percpu_irq(csky_mptimer_irq, 0);

 clockevents_config_and_register(&to->clkevt, timer_of_rate(to),
     2, ULONG_MAX);

 return 0;
}
