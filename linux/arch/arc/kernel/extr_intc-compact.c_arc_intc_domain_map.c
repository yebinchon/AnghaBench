
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
typedef int irq_hw_number_t ;



 int handle_level_irq ;
 int handle_percpu_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_percpu_devid (unsigned int) ;
 int onchip_intc ;

__attribute__((used)) static int arc_intc_domain_map(struct irq_domain *d, unsigned int irq,
          irq_hw_number_t hw)
{
 switch (hw) {
 case 128:
  irq_set_percpu_devid(irq);
  irq_set_chip_and_handler(irq, &onchip_intc, handle_percpu_irq);
  break;
 default:
  irq_set_chip_and_handler(irq, &onchip_intc, handle_level_irq);
 }
 return 0;
}
