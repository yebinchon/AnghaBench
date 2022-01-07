
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpic {int flags; } ;
struct irq_desc {int irq_data; } ;
struct irq_chip {int (* irq_eoi ) (int *) ;} ;


 int BUG_ON (int) ;
 int MPIC_SECONDARY ;
 int generic_handle_irq (unsigned int) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct mpic* irq_desc_get_handler_data (struct irq_desc*) ;
 unsigned int mpic_get_one_irq (struct mpic*) ;
 int stub1 (int *) ;

__attribute__((used)) static void mpic_cascade(struct irq_desc *desc)
{
 struct irq_chip *chip = irq_desc_get_chip(desc);
 struct mpic *mpic = irq_desc_get_handler_data(desc);
 unsigned int virq;

 BUG_ON(!(mpic->flags & MPIC_SECONDARY));

 virq = mpic_get_one_irq(mpic);
 if (virq)
  generic_handle_irq(virq);

 chip->irq_eoi(&desc->irq_data);
}
