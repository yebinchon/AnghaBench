
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPI_IRQ ;
 int ipi_irqaction ;
 unsigned int irq_create_mapping (int *,int ) ;
 int setup_irq (unsigned int,int *) ;

void ipi_init(void)
{
 unsigned irq = irq_create_mapping(((void*)0), IPI_IRQ);
 setup_irq(irq, &ipi_irqaction);
}
