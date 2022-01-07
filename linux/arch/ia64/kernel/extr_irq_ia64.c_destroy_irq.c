
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_irq_vector (unsigned int) ;
 int irq_init_desc (unsigned int) ;

void destroy_irq(unsigned int irq)
{
 irq_init_desc(irq);
 clear_irq_vector(irq);
}
