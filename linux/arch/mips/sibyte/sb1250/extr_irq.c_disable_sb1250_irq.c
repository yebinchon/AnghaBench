
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;


 int * sb1250_irq_owner ;
 int sb1250_mask_irq (int ,unsigned int) ;

__attribute__((used)) static void disable_sb1250_irq(struct irq_data *d)
{
 unsigned int irq = d->irq;

 sb1250_mask_irq(sb1250_irq_owner[irq], irq);
}
