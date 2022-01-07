
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regmap_irq_chip_data {struct regmap_irq_chip_data* status_buf; struct regmap_irq_chip_data* status_reg_buf; struct regmap_irq_chip_data* mask_buf; struct regmap_irq_chip_data* mask_buf_def; struct regmap_irq_chip_data* wake_buf; struct regmap_irq_chip_data* type_buf_def; struct regmap_irq_chip_data* type_buf; int domain; TYPE_2__* chip; } ;
struct TYPE_4__ {int num_irqs; TYPE_1__* irqs; } ;
struct TYPE_3__ {int mask; } ;


 int free_irq (int,struct regmap_irq_chip_data*) ;
 int irq_dispose_mapping (unsigned int) ;
 int irq_domain_remove (int ) ;
 unsigned int irq_find_mapping (int ,int) ;
 int kfree (struct regmap_irq_chip_data*) ;

void regmap_del_irq_chip(int irq, struct regmap_irq_chip_data *d)
{
 unsigned int virq;
 int hwirq;

 if (!d)
  return;

 free_irq(irq, d);


 for (hwirq = 0; hwirq < d->chip->num_irqs; hwirq++) {

  if (!d->chip->irqs[hwirq].mask)
   continue;





  virq = irq_find_mapping(d->domain, hwirq);
  if (virq)
   irq_dispose_mapping(virq);
 }

 irq_domain_remove(d->domain);
 kfree(d->type_buf);
 kfree(d->type_buf_def);
 kfree(d->wake_buf);
 kfree(d->mask_buf_def);
 kfree(d->mask_buf);
 kfree(d->status_reg_buf);
 kfree(d->status_buf);
 kfree(d);
}
