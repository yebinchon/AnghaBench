
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ doorbell_irqs; scalar_t__ soft_nmi_irqs; scalar_t__ sreset_irqs; scalar_t__ hmi_exceptions; scalar_t__ timer_irqs_others; scalar_t__ spurious_irqs; scalar_t__ mce_exceptions; scalar_t__ pmu_irqs; scalar_t__ broadcast_irqs_event; int timer_irqs_event; } ;


 int irq_stat ;
 TYPE_1__ per_cpu (int ,unsigned int) ;

u64 arch_irq_stat_cpu(unsigned int cpu)
{
 u64 sum = per_cpu(irq_stat, cpu).timer_irqs_event;

 sum += per_cpu(irq_stat, cpu).broadcast_irqs_event;
 sum += per_cpu(irq_stat, cpu).pmu_irqs;
 sum += per_cpu(irq_stat, cpu).mce_exceptions;
 sum += per_cpu(irq_stat, cpu).spurious_irqs;
 sum += per_cpu(irq_stat, cpu).timer_irqs_others;
 sum += per_cpu(irq_stat, cpu).hmi_exceptions;
 sum += per_cpu(irq_stat, cpu).sreset_irqs;







 return sum;
}
