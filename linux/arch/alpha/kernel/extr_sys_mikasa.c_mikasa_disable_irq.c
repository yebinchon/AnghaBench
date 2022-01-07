
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int cached_irq_mask ;
 int mikasa_update_irq_hw (int) ;

__attribute__((used)) static void
mikasa_disable_irq(struct irq_data *d)
{
 mikasa_update_irq_hw(cached_irq_mask &= ~(1 << (d->irq - 16)));
}
