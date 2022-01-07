
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
typedef int irq_hw_number_t ;


 int IRQ_MOVE_PCNTXT ;
 int handle_level_irq ;
 int idu_irq_chip ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_status_flags (unsigned int,int ) ;

__attribute__((used)) static int idu_irq_map(struct irq_domain *d, unsigned int virq, irq_hw_number_t hwirq)
{
 irq_set_chip_and_handler(virq, &idu_irq_chip, handle_level_irq);
 irq_set_status_flags(virq, IRQ_MOVE_PCNTXT);

 return 0;
}
