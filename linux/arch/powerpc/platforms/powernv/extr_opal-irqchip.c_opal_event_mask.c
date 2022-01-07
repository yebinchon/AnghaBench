
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int hwirq; } ;
struct TYPE_2__ {int mask; } ;


 int clear_bit (int ,int *) ;
 TYPE_1__ opal_event_irqchip ;

__attribute__((used)) static void opal_event_mask(struct irq_data *d)
{
 clear_bit(d->hwirq, &opal_event_irqchip.mask);
}
