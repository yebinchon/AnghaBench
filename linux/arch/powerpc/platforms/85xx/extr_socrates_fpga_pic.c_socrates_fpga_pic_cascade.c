
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int irq_data; } ;
struct irq_chip {int (* irq_eoi ) (int *) ;} ;


 int generic_handle_irq (unsigned int) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 unsigned int irq_desc_get_irq (struct irq_desc*) ;
 unsigned int socrates_fpga_pic_get_irq (unsigned int) ;
 int stub1 (int *) ;

__attribute__((used)) static void socrates_fpga_pic_cascade(struct irq_desc *desc)
{
 struct irq_chip *chip = irq_desc_get_chip(desc);
 unsigned int irq = irq_desc_get_irq(desc);
 unsigned int cascade_irq;





 cascade_irq = socrates_fpga_pic_get_irq(irq);

 if (cascade_irq)
  generic_handle_irq(cascade_irq);
 chip->irq_eoi(&desc->irq_data);
}
