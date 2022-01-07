
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int irq; } ;
struct TYPE_2__ {int (* irq_mask ) (struct irq_data*) ;} ;
struct irq_chip_type {TYPE_1__ chip; } ;


 struct irq_chip_type* irq_data_get_chip_type (struct irq_data*) ;
 int omap_ack_irq (int ) ;
 int stub1 (struct irq_data*) ;

__attribute__((used)) static void omap_mask_ack_irq(struct irq_data *d)
{
 struct irq_chip_type *ct = irq_data_get_chip_type(d);

 ct->chip.irq_mask(d);
 omap_ack_irq(d->irq);
}
