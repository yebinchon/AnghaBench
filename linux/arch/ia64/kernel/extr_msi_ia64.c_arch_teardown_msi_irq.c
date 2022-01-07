
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_irq (unsigned int) ;

void arch_teardown_msi_irq(unsigned int irq)
{
 destroy_irq(irq);
}
