
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int irq_data; } ;
struct irq_chip {int (* irq_eoi ) (int *) ;} ;


 unsigned int gef_pic_get_irq () ;
 int generic_handle_irq (unsigned int) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 int stub1 (int *) ;

__attribute__((used)) static void gef_pic_cascade(struct irq_desc *desc)
{
 struct irq_chip *chip = irq_desc_get_chip(desc);
 unsigned int cascade_irq;





 cascade_irq = gef_pic_get_irq();

 if (cascade_irq)
  generic_handle_irq(cascade_irq);

 chip->irq_eoi(&desc->irq_data);
}
