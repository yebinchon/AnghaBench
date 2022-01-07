
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {int dummy; } ;
typedef unsigned int ia64_vector ;


 int BUG_ON (int ) ;
 int CPU_MASK_ALL ;
 int IRQ_PER_CPU ;
 int bind_irq_vector (unsigned int,unsigned int,int ) ;
 int handle_percpu_irq ;
 int irq_set_chip (unsigned int,int *) ;
 int irq_set_handler (unsigned int,int ) ;
 int irq_set_status_flags (unsigned int,int ) ;
 int irq_type_ia64_lsapic ;
 int setup_irq (unsigned int,struct irqaction*) ;

void
ia64_native_register_percpu_irq (ia64_vector vec, struct irqaction *action)
{
 unsigned int irq;

 irq = vec;
 BUG_ON(bind_irq_vector(irq, vec, CPU_MASK_ALL));
 irq_set_status_flags(irq, IRQ_PER_CPU);
 irq_set_chip(irq, &irq_type_ia64_lsapic);
 if (action)
  setup_irq(irq, action);
 irq_set_handler(irq, handle_percpu_irq);
}
