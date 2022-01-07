
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct irq_desc {int lock; } ;


 int ETHERNET_IRQ ;
 int MMACINTREG ;
 int icu1_set (int ,int ) ;
 struct irq_desc* irq_to_desc (int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

void vr41xx_enable_macint(uint16_t mask)
{
 struct irq_desc *desc = irq_to_desc(ETHERNET_IRQ);
 unsigned long flags;

 raw_spin_lock_irqsave(&desc->lock, flags);
 icu1_set(MMACINTREG, mask);
 raw_spin_unlock_irqrestore(&desc->lock, flags);
}
