
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {TYPE_1__* chip; struct irq_data* parent_data; } ;
struct cpumask {int dummy; } ;
struct TYPE_2__ {int (* irq_set_affinity ) (struct irq_data*,struct cpumask const*,int) ;} ;


 int IRQ_SET_MASK_OK_DONE ;
 int ioapic_configure_entry (struct irq_data*) ;
 int ioapic_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct irq_data*,struct cpumask const*,int) ;

__attribute__((used)) static int ioapic_set_affinity(struct irq_data *irq_data,
          const struct cpumask *mask, bool force)
{
 struct irq_data *parent = irq_data->parent_data;
 unsigned long flags;
 int ret;

 ret = parent->chip->irq_set_affinity(parent, mask, force);
 raw_spin_lock_irqsave(&ioapic_lock, flags);
 if (ret >= 0 && ret != IRQ_SET_MASK_OK_DONE)
  ioapic_configure_entry(irq_data);
 raw_spin_unlock_irqrestore(&ioapic_lock, flags);

 return ret;
}
