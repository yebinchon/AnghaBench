
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spider_pic {int host; scalar_t__ regs; } ;
struct irq_desc {int irq_data; } ;
struct irq_chip {int (* irq_eoi ) (int *) ;} ;


 unsigned int SPIDER_IRQ_INVALID ;
 scalar_t__ TIR_CS ;
 int generic_handle_irq (unsigned int) ;
 int in_be32 (scalar_t__) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct spider_pic* irq_desc_get_handler_data (struct irq_desc*) ;
 unsigned int irq_linear_revmap (int ,unsigned int) ;
 int stub1 (int *) ;

__attribute__((used)) static void spider_irq_cascade(struct irq_desc *desc)
{
 struct irq_chip *chip = irq_desc_get_chip(desc);
 struct spider_pic *pic = irq_desc_get_handler_data(desc);
 unsigned int cs, virq;

 cs = in_be32(pic->regs + TIR_CS) >> 24;
 if (cs == SPIDER_IRQ_INVALID)
  virq = 0;
 else
  virq = irq_linear_revmap(pic->host, cs);

 if (virq)
  generic_handle_irq(virq);

 chip->irq_eoi(&desc->irq_data);
}
