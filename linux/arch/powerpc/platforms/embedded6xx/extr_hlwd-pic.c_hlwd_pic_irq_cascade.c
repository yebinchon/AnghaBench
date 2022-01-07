
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_desc {int lock; int irq_data; } ;
struct irq_chip {int (* irq_unmask ) (int *) ;int (* irq_ack ) (int *) ;int (* irq_mask ) (int *) ;} ;


 unsigned int __hlwd_pic_get_irq (struct irq_domain*) ;
 int generic_handle_irq (unsigned int) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct irq_domain* irq_desc_get_handler_data (struct irq_desc*) ;
 int irqd_irq_disabled (int *) ;
 int pr_err (char*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 int stub3 (int *) ;

__attribute__((used)) static void hlwd_pic_irq_cascade(struct irq_desc *desc)
{
 struct irq_chip *chip = irq_desc_get_chip(desc);
 struct irq_domain *irq_domain = irq_desc_get_handler_data(desc);
 unsigned int virq;

 raw_spin_lock(&desc->lock);
 chip->irq_mask(&desc->irq_data);
 raw_spin_unlock(&desc->lock);

 virq = __hlwd_pic_get_irq(irq_domain);
 if (virq)
  generic_handle_irq(virq);
 else
  pr_err("spurious interrupt!\n");

 raw_spin_lock(&desc->lock);
 chip->irq_ack(&desc->irq_data);
 if (!irqd_irq_disabled(&desc->irq_data) && chip->irq_unmask)
  chip->irq_unmask(&desc->irq_data);
 raw_spin_unlock(&desc->lock);
}
