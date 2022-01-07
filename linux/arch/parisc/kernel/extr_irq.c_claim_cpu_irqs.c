
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_IRQ_BASE ;
 int CPU_IRQ_MAX ;
 int IPI_IRQ ;
 int TIMER_IRQ ;
 int cpu_interrupt_type ;
 int handle_percpu_irq ;
 int ipi_action ;
 int irq_set_chip_and_handler (int,int *,int ) ;
 int irq_set_handler (int ,int ) ;
 int setup_irq (int ,int *) ;
 int timer_action ;

__attribute__((used)) static void claim_cpu_irqs(void)
{
 int i;
 for (i = CPU_IRQ_BASE; i <= CPU_IRQ_MAX; i++) {
  irq_set_chip_and_handler(i, &cpu_interrupt_type,
      handle_percpu_irq);
 }

 irq_set_handler(TIMER_IRQ, handle_percpu_irq);
 setup_irq(TIMER_IRQ, &timer_action);




}
