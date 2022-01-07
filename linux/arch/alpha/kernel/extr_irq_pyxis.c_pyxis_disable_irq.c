
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 unsigned long cached_irq_mask ;
 int pyxis_update_irq_hw (unsigned long) ;

__attribute__((used)) static void
pyxis_disable_irq(struct irq_data *d)
{
 pyxis_update_irq_hw(cached_irq_mask &= ~(1UL << (d->irq - 16)));
}
