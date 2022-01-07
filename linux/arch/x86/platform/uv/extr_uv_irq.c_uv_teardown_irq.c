
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int irq_domain_free_irqs (unsigned int,int) ;

void uv_teardown_irq(unsigned int irq)
{
 irq_domain_free_irqs(irq, 1);
}
