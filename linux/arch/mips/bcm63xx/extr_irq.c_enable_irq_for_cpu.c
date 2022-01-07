
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct cpumask {int dummy; } ;


 int cpu_online (int) ;
 int cpumask_test_cpu (int,struct cpumask const*) ;
 struct cpumask const* irq_data_get_affinity_mask (struct irq_data*) ;
 scalar_t__ irqd_affinity_was_set (struct irq_data*) ;

__attribute__((used)) static inline int enable_irq_for_cpu(int cpu, struct irq_data *d,
         const struct cpumask *m)
{
 bool enable = cpu_online(cpu);







 return enable;
}
