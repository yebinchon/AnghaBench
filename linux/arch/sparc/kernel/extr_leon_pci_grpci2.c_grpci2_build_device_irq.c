
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int grpci2_irq ;
 int handle_simple_irq ;
 unsigned int irq_alloc (unsigned int,unsigned int) ;
 int irq_set_chip_and_handler_name (unsigned int,int *,int ,char*) ;
 int irq_set_chip_data (unsigned int,void*) ;

__attribute__((used)) static unsigned int grpci2_build_device_irq(unsigned int irq)
{
 unsigned int virq = 0, pil;

 pil = 1 << 8;
 virq = irq_alloc(irq, pil);
 if (virq == 0)
  goto out;

 irq_set_chip_and_handler_name(virq, &grpci2_irq, handle_simple_irq,
          "pcilvl");
 irq_set_chip_data(virq, (void *)irq);

out:
 return virq;
}
