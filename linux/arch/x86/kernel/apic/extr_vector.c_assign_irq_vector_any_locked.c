
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct cpumask {int dummy; } ;


 int NUMA_NO_NODE ;
 int assign_vector_locked (struct irq_data*,struct cpumask const*) ;
 struct cpumask const* cpu_online_mask ;
 int cpumask_and (struct cpumask const*,struct cpumask const*,struct cpumask const*) ;
 struct cpumask const* cpumask_of_node (int) ;
 struct cpumask* irq_data_get_affinity_mask (struct irq_data*) ;
 int irq_data_get_node (struct irq_data*) ;
 struct cpumask const* vector_searchmask ;

__attribute__((used)) static int assign_irq_vector_any_locked(struct irq_data *irqd)
{

 const struct cpumask *affmsk = irq_data_get_affinity_mask(irqd);
 int node = irq_data_get_node(irqd);

 if (node == NUMA_NO_NODE)
  goto all;

 cpumask_and(vector_searchmask, cpumask_of_node(node), affmsk);
 if (!assign_vector_locked(irqd, vector_searchmask))
  return 0;

 if (!assign_vector_locked(irqd, cpumask_of_node(node)))
  return 0;
all:

 cpumask_and(vector_searchmask, affmsk, cpu_online_mask);
 if (!assign_vector_locked(irqd, vector_searchmask))
  return 0;

 return assign_vector_locked(irqd, cpu_online_mask);
}
