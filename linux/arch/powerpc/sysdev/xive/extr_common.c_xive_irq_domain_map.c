
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
typedef scalar_t__ irq_hw_number_t ;


 int IRQ_LEVEL ;
 int handle_fasteoi_irq ;
 int handle_percpu_irq ;
 int irq_clear_status_flags (unsigned int,int ) ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int xive_ipi_chip ;
 int xive_irq_alloc_data (unsigned int,scalar_t__) ;
 int xive_irq_chip ;

__attribute__((used)) static int xive_irq_domain_map(struct irq_domain *h, unsigned int virq,
          irq_hw_number_t hw)
{
 int rc;





 irq_clear_status_flags(virq, IRQ_LEVEL);
 rc = xive_irq_alloc_data(virq, hw);
 if (rc)
  return rc;

 irq_set_chip_and_handler(virq, &xive_irq_chip, handle_fasteoi_irq);

 return 0;
}
