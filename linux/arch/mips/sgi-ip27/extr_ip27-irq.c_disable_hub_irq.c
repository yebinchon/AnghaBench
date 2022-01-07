
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct hub_irq_data {int * irq_mask; int cpu; } ;


 int __raw_writeq (unsigned long,int ) ;
 int clear_bit (int ,unsigned long*) ;
 struct hub_irq_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_enable_mask ;
 unsigned long* per_cpu (int ,int ) ;

__attribute__((used)) static void disable_hub_irq(struct irq_data *d)
{
 struct hub_irq_data *hd = irq_data_get_irq_chip_data(d);
 unsigned long *mask = per_cpu(irq_enable_mask, hd->cpu);

 clear_bit(d->hwirq, mask);
 __raw_writeq(mask[0], hd->irq_mask[0]);
 __raw_writeq(mask[1], hd->irq_mask[1]);
}
