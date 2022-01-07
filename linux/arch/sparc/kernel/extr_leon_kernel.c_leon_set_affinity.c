
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {scalar_t__ chip_data; } ;
struct cpumask {int dummy; } ;


 int IRQ_SET_MASK_OK ;
 unsigned long LEON3_BYPASS_LOAD_PA (int ) ;
 int LEON3_BYPASS_STORE_PA (int ,unsigned long) ;
 int LEON_IMASK (int) ;
 int irq_choose_cpu (struct cpumask const*) ;
 struct cpumask const* irq_data_get_affinity_mask (struct irq_data*) ;
 int leon_irq_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int leon_set_affinity(struct irq_data *data, const struct cpumask *dest,
        bool force)
{
 unsigned long mask, oldmask, flags;
 int oldcpu, newcpu;

 mask = (unsigned long)data->chip_data;
 oldcpu = irq_choose_cpu(irq_data_get_affinity_mask(data));
 newcpu = irq_choose_cpu(dest);

 if (oldcpu == newcpu)
  goto out;


 spin_lock_irqsave(&leon_irq_lock, flags);
 oldmask = LEON3_BYPASS_LOAD_PA(LEON_IMASK(oldcpu));
 LEON3_BYPASS_STORE_PA(LEON_IMASK(oldcpu), (oldmask & ~mask));
 oldmask = LEON3_BYPASS_LOAD_PA(LEON_IMASK(newcpu));
 LEON3_BYPASS_STORE_PA(LEON_IMASK(newcpu), (oldmask | mask));
 spin_unlock_irqrestore(&leon_irq_lock, flags);
out:
 return IRQ_SET_MASK_OK;
}
