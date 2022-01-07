
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct irq_desc {int lock; } ;


 int FIR_IRQ ;
 int MFIRINTREG ;
 int icu2_clear (int ,int ) ;
 struct irq_desc* irq_to_desc (int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

void vr41xx_disable_firint(uint16_t mask)
{
 struct irq_desc *desc = irq_to_desc(FIR_IRQ);
 unsigned long flags;

 raw_spin_lock_irqsave(&desc->lock, flags);
 icu2_clear(MFIRINTREG, mask);
 raw_spin_unlock_irqrestore(&desc->lock, flags);
}
