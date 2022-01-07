
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int ack_c0_eirr (unsigned int) ;
 int clear_c0_eimr (unsigned int) ;
 unsigned int irq_desc_get_irq (struct irq_desc*) ;
 int scheduler_ipi () ;
 int set_c0_eimr (unsigned int) ;

void nlm_smp_resched_ipi_handler(struct irq_desc *desc)
{
 unsigned int irq = irq_desc_get_irq(desc);
 clear_c0_eimr(irq);
 ack_c0_eirr(irq);
 scheduler_ipi();
 set_c0_eimr(irq);
}
