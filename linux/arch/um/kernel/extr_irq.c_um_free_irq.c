
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_irq (unsigned int,void*) ;
 int free_irq_by_irq_and_dev (unsigned int,void*) ;

void um_free_irq(unsigned int irq, void *dev)
{
 free_irq_by_irq_and_dev(irq, dev);
 free_irq(irq, dev);
}
