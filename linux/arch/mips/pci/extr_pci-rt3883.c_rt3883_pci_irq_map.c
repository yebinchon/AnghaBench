
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int host_data; } ;
typedef int irq_hw_number_t ;


 int handle_level_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,int ) ;
 int rt3883_pci_irq_chip ;

__attribute__((used)) static int rt3883_pci_irq_map(struct irq_domain *d, unsigned int irq,
         irq_hw_number_t hw)
{
 irq_set_chip_and_handler(irq, &rt3883_pci_irq_chip, handle_level_irq);
 irq_set_chip_data(irq, d->host_data);

 return 0;
}
