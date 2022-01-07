
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int cached_21 ;
 int cached_A1 ;
 int i8259_lock ;
 int i8259_set_irq_mask (int) ;
 int pr_debug (char*,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void i8259_unmask_irq(struct irq_data *d)
{
 unsigned long flags;

 pr_debug("i8259_unmask_irq(%d)\n", d->irq);

 raw_spin_lock_irqsave(&i8259_lock, flags);
 if (d->irq < 8)
  cached_21 &= ~(1 << d->irq);
 else
  cached_A1 &= ~(1 << (d->irq-8));
 i8259_set_irq_mask(d->irq);
 raw_spin_unlock_irqrestore(&i8259_lock, flags);
}
