
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int cached_irq_mask ;
 int noritake_update_irq_hw (int,int) ;

__attribute__((used)) static void
noritake_disable_irq(struct irq_data *d)
{
 noritake_update_irq_hw(d->irq, cached_irq_mask &= ~(1 << (d->irq - 16)));
}
