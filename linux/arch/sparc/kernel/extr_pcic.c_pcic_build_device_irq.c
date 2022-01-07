
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 unsigned long get_irqmask (unsigned int) ;
 int handle_level_irq ;
 unsigned int irq_alloc (unsigned int,unsigned int) ;
 int irq_set_chip_and_handler_name (unsigned int,int *,int ,char*) ;
 int irq_set_chip_data (unsigned int,void*) ;
 int pcic_irq ;

unsigned int pcic_build_device_irq(struct platform_device *op,
                                   unsigned int real_irq)
{
 unsigned int irq;
 unsigned long mask;

 irq = 0;
 mask = get_irqmask(real_irq);
 if (mask == 0)
  goto out;

 irq = irq_alloc(real_irq, real_irq);
 if (irq == 0)
  goto out;

 irq_set_chip_and_handler_name(irq, &pcic_irq,
                               handle_level_irq, "PCIC");
 irq_set_chip_data(irq, (void *)mask);

out:
 return irq;
}
