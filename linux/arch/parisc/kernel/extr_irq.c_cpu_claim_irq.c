
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_chip {int dummy; } ;


 int EBUSY ;
 int __cpu_unmask_irq (unsigned int) ;
 int cpu_interrupt_type ;
 int handle_percpu_irq ;
 int * irq_get_chip (unsigned int) ;
 scalar_t__ irq_has_action (unsigned int) ;
 int irq_set_chip_and_handler (unsigned int,struct irq_chip*,int ) ;
 int irq_set_chip_data (unsigned int,void*) ;

int cpu_claim_irq(unsigned int irq, struct irq_chip *type, void *data)
{
 if (irq_has_action(irq))
  return -EBUSY;
 if (irq_get_chip(irq) != &cpu_interrupt_type)
  return -EBUSY;


 if (type) {
  irq_set_chip_and_handler(irq, type, handle_percpu_irq);
  irq_set_chip_data(irq, data);
  __cpu_unmask_irq(irq);
 }
 return 0;
}
