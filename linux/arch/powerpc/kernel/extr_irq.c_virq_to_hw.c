
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
typedef int irq_hw_number_t ;


 scalar_t__ WARN_ON (int) ;
 struct irq_data* irq_get_irq_data (unsigned int) ;

irq_hw_number_t virq_to_hw(unsigned int virq)
{
 struct irq_data *irq_data = irq_get_irq_data(virq);
 return WARN_ON(!irq_data) ? 0 : irq_data->hwirq;
}
