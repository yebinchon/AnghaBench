
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned long irq; } ;


 int cabriolet_update_irq_hw (unsigned long,unsigned long) ;
 unsigned long cached_irq_mask ;

__attribute__((used)) static void
cabriolet_disable_irq(struct irq_data *d)
{
 cabriolet_update_irq_hw(d->irq, cached_irq_mask |= 1UL << d->irq);
}
