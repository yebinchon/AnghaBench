
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int host_data; } ;
typedef int irq_hw_number_t ;


 int IRQ_LEVEL ;
 int handle_level_irq ;
 int hlwd_pic ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,int ) ;
 int irq_set_status_flags (unsigned int,int ) ;

__attribute__((used)) static int hlwd_pic_map(struct irq_domain *h, unsigned int virq,
      irq_hw_number_t hwirq)
{
 irq_set_chip_data(virq, h->host_data);
 irq_set_status_flags(virq, IRQ_LEVEL);
 irq_set_chip_and_handler(virq, &hlwd_pic, handle_level_irq);
 return 0;
}
