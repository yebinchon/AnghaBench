
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int masked; } ;
struct moxtet {TYPE_1__ irq; } ;
struct irq_data {int hwirq; } ;


 int BIT (int ) ;
 struct moxtet* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void moxtet_irq_mask(struct irq_data *d)
{
 struct moxtet *moxtet = irq_data_get_irq_chip_data(d);

 moxtet->irq.masked |= BIT(d->hwirq);
}
