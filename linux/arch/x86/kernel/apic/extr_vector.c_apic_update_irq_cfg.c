
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct irq_data {int irq; } ;
struct TYPE_3__ {unsigned int vector; int dest_apicid; } ;
struct apic_chip_data {TYPE_1__ hw_irq_cfg; } ;
struct TYPE_4__ {int (* calc_dest_apicid ) (unsigned int) ;} ;


 TYPE_2__* apic ;
 struct apic_chip_data* apic_chip_data (struct irq_data*) ;
 int cpumask_of (unsigned int) ;
 int irq_data_update_effective_affinity (struct irq_data*,int ) ;
 int lockdep_assert_held (int *) ;
 int stub1 (unsigned int) ;
 int trace_vector_config (int ,unsigned int,unsigned int,int ) ;
 int vector_lock ;

__attribute__((used)) static void apic_update_irq_cfg(struct irq_data *irqd, unsigned int vector,
    unsigned int cpu)
{
 struct apic_chip_data *apicd = apic_chip_data(irqd);

 lockdep_assert_held(&vector_lock);

 apicd->hw_irq_cfg.vector = vector;
 apicd->hw_irq_cfg.dest_apicid = apic->calc_dest_apicid(cpu);
 irq_data_update_effective_affinity(irqd, cpumask_of(cpu));
 trace_vector_config(irqd->irq, vector, cpu,
       apicd->hw_irq_cfg.dest_apicid);
}
