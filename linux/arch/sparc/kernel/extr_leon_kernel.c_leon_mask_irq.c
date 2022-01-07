
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {scalar_t__ chip_data; } ;


 unsigned long LEON3_BYPASS_LOAD_PA (int ) ;
 int LEON3_BYPASS_STORE_PA (int ,unsigned long) ;
 int LEON_IMASK (int) ;
 int irq_choose_cpu (int ) ;
 int irq_data_get_affinity_mask (struct irq_data*) ;
 int leon_irq_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void leon_mask_irq(struct irq_data *data)
{
 unsigned long mask, oldmask, flags;
 int cpu;

 mask = (unsigned long)data->chip_data;
 cpu = irq_choose_cpu(irq_data_get_affinity_mask(data));
 spin_lock_irqsave(&leon_irq_lock, flags);
 oldmask = LEON3_BYPASS_LOAD_PA(LEON_IMASK(cpu));
 LEON3_BYPASS_STORE_PA(LEON_IMASK(cpu), (oldmask & ~mask));
 spin_unlock_irqrestore(&leon_irq_lock, flags);
}
