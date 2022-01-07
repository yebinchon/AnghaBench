
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int IMR ;

__attribute__((used)) static void intc_irq_mask(struct irq_data *d)
{
 IMR |= (1 << d->irq);
}
