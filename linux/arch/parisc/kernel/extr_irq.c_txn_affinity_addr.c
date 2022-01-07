
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int dummy; } ;
struct TYPE_2__ {unsigned long txn_addr; } ;


 int cpu_data ;
 int cpumask_copy (int ,int ) ;
 int cpumask_of (int) ;
 int irq_data_get_affinity_mask (struct irq_data*) ;
 struct irq_data* irq_get_irq_data (unsigned int) ;
 TYPE_1__ per_cpu (int ,int) ;

unsigned long txn_affinity_addr(unsigned int irq, int cpu)
{





 return per_cpu(cpu_data, cpu).txn_addr;
}
