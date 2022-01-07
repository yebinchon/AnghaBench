
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int __i8259a_disable_irq (int ) ;
 int i8259_irq_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
i8259a_disable_irq(struct irq_data *d)
{
 spin_lock(&i8259_irq_lock);
 __i8259a_disable_irq(d->irq);
 spin_unlock(&i8259_irq_lock);
}
