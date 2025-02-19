
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
typedef int irq_hw_number_t ;


 int IRQ_LEVEL ;
 int gef_pic_chip ;
 int handle_level_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_status_flags (unsigned int,int ) ;

__attribute__((used)) static int gef_pic_host_map(struct irq_domain *h, unsigned int virq,
     irq_hw_number_t hwirq)
{

 irq_set_status_flags(virq, IRQ_LEVEL);
 irq_set_chip_and_handler(virq, &gef_pic_chip, handle_level_irq);

 return 0;
}
