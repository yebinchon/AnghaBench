
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {struct ipic* host_data; } ;
struct ipic {int dummy; } ;
typedef int irq_hw_number_t ;


 int IRQ_TYPE_NONE ;
 int handle_level_irq ;
 int ipic_level_irq_chip ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct ipic*) ;
 int irq_set_irq_type (unsigned int,int ) ;

__attribute__((used)) static int ipic_host_map(struct irq_domain *h, unsigned int virq,
    irq_hw_number_t hw)
{
 struct ipic *ipic = h->host_data;

 irq_set_chip_data(virq, ipic);
 irq_set_chip_and_handler(virq, &ipic_level_irq_chip, handle_level_irq);


 irq_set_irq_type(virq, IRQ_TYPE_NONE);

 return 0;
}
