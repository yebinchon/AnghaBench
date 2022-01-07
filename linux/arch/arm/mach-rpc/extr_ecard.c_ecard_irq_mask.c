
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct irq_data {int irq; } ;
struct TYPE_5__ {TYPE_4__* ops; } ;
typedef TYPE_1__ ecard_t ;
struct TYPE_6__ {int (* irqdisable ) (TYPE_1__*,int ) ;} ;


 TYPE_4__ ecard_default_ops ;
 TYPE_1__* irq_data_get_irq_chip_data (struct irq_data*) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void ecard_irq_mask(struct irq_data *d)
{
 ecard_t *ec = irq_data_get_irq_chip_data(d);

 if (ec) {
  if (!ec->ops)
   ec->ops = &ecard_default_ops;

  if (ec->ops && ec->ops->irqdisable)
   ec->ops->irqdisable(ec, d->irq);
 }
}
