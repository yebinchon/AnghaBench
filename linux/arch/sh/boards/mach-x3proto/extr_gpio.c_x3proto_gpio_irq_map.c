
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
typedef int irq_hw_number_t ;


 int dummy_irq_chip ;
 int handle_simple_irq ;
 int irq_set_chip_and_handler_name (unsigned int,int *,int ,char*) ;

__attribute__((used)) static int x3proto_gpio_irq_map(struct irq_domain *domain, unsigned int virq,
    irq_hw_number_t hwirq)
{
 irq_set_chip_and_handler_name(virq, &dummy_irq_chip, handle_simple_irq,
          "gpio");

 return 0;
}
