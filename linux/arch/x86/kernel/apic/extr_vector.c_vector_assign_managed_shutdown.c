
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int MANAGED_IRQ_SHUTDOWN_VECTOR ;
 int apic_update_irq_cfg (struct irq_data*,int ,unsigned int) ;
 int cpu_online_mask ;
 unsigned int cpumask_first (int ) ;

__attribute__((used)) static void vector_assign_managed_shutdown(struct irq_data *irqd)
{
 unsigned int cpu = cpumask_first(cpu_online_mask);

 apic_update_irq_cfg(irqd, MANAGED_IRQ_SHUTDOWN_VECTOR, cpu);
}
