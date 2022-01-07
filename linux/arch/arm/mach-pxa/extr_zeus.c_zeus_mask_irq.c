
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int zeus_irq_enabled_mask ;
 int zeus_irq_to_bitmask (int ) ;

__attribute__((used)) static void zeus_mask_irq(struct irq_data *d)
{
 zeus_irq_enabled_mask &= ~(zeus_irq_to_bitmask(d->irq));
}
