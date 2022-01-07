
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;


 unsigned int LASAT_IRQ_BASE ;
 int* lasat_int_mask ;
 int lasat_int_mask_shift ;

void enable_lasat_irq(struct irq_data *d)
{
 unsigned int irq_nr = d->irq - LASAT_IRQ_BASE;

 *lasat_int_mask |= (1 << irq_nr) << lasat_int_mask_shift;
}
