
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int host_data; } ;
typedef int irq_hw_number_t ;


 int handle_simple_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,int ) ;
 int msic_irq_chip ;

__attribute__((used)) static int msic_host_map(struct irq_domain *h, unsigned int virq,
    irq_hw_number_t hw)
{
 irq_set_chip_data(virq, h->host_data);
 irq_set_chip_and_handler(virq, &msic_irq_chip, handle_simple_irq);

 return 0;
}
