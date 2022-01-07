
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct irq_domain {int dummy; } ;
typedef int irq_hw_number_t ;
struct TYPE_3__ {int irqchip; } ;


 int handle_level_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,TYPE_1__*) ;
 TYPE_1__ opal_event_irqchip ;

__attribute__((used)) static int opal_event_map(struct irq_domain *d, unsigned int irq,
   irq_hw_number_t hwirq)
{
 irq_set_chip_data(irq, &opal_event_irqchip);
 irq_set_chip_and_handler(irq, &opal_event_irqchip.irqchip,
    handle_level_irq);

 return 0;
}
