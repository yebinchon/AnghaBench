
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;
struct cpumask {int dummy; } ;


 int EINVAL ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int assign_managed_vector (struct irq_data*,int ) ;
 int cpu_online_mask ;
 int cpumask_and (int ,struct cpumask const*,int ) ;
 int cpumask_empty (int ) ;
 struct cpumask* irq_data_get_affinity_mask (struct irq_data*) ;
 int pr_err (char*,int ) ;
 int vector_searchmask ;

__attribute__((used)) static int activate_managed(struct irq_data *irqd)
{
 const struct cpumask *dest = irq_data_get_affinity_mask(irqd);
 int ret;

 cpumask_and(vector_searchmask, dest, cpu_online_mask);
 if (WARN_ON_ONCE(cpumask_empty(vector_searchmask))) {

  pr_err("Managed startup for irq %u, but no CPU\n", irqd->irq);
  return -EINVAL;
 }

 ret = assign_managed_vector(irqd, vector_searchmask);




 if (WARN_ON_ONCE(ret < 0)) {
  pr_err("Managed startup irq %u, no vector available\n",
         irqd->irq);
 }
 return ret;
}
