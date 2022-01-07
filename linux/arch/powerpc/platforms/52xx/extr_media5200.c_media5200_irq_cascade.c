
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct irq_desc {int lock; int irq_data; } ;
struct irq_chip {int (* irq_unmask ) (int *) ;int (* irq_ack ) (int *) ;int (* irq_mask ) (int *) ;} ;
struct TYPE_2__ {int irqhost; scalar_t__ regs; } ;


 scalar_t__ MEDIA5200_IRQ_ENABLE ;
 int MEDIA5200_IRQ_SHIFT ;
 scalar_t__ MEDIA5200_IRQ_STATUS ;
 int ffs (int) ;
 int generic_handle_irq (int) ;
 int in_be32 (scalar_t__) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 int irq_linear_revmap (int ,int) ;
 int irqd_irq_disabled (int *) ;
 TYPE_1__ media5200_irq ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 int stub3 (int *) ;

__attribute__((used)) static void media5200_irq_cascade(struct irq_desc *desc)
{
 struct irq_chip *chip = irq_desc_get_chip(desc);
 int sub_virq, val;
 u32 status, enable;


 raw_spin_lock(&desc->lock);
 chip->irq_mask(&desc->irq_data);
 raw_spin_unlock(&desc->lock);



 status = in_be32(media5200_irq.regs + MEDIA5200_IRQ_ENABLE);
 enable = in_be32(media5200_irq.regs + MEDIA5200_IRQ_STATUS);
 val = ffs((status & enable) >> MEDIA5200_IRQ_SHIFT);
 if (val) {
  sub_virq = irq_linear_revmap(media5200_irq.irqhost, val - 1);



  generic_handle_irq(sub_virq);
 }


 raw_spin_lock(&desc->lock);
 chip->irq_ack(&desc->irq_data);
 if (!irqd_irq_disabled(&desc->irq_data))
  chip->irq_unmask(&desc->irq_data);
 raw_spin_unlock(&desc->lock);
}
