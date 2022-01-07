
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int pmu_irqs; } ;


 int __this_cpu_inc (int ) ;
 TYPE_1__ irq_stat ;
 int perf_irq (struct pt_regs*) ;

void performance_monitor_exception(struct pt_regs *regs)
{
 __this_cpu_inc(irq_stat.pmu_irqs);

 perf_irq(regs);
}
