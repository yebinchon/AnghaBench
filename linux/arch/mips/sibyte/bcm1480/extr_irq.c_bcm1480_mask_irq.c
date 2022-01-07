
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 scalar_t__ A_BCM1480_IMR_MAPPER (int) ;
 unsigned long BCM1480_IMR_HL_SPACING ;
 int BCM1480_NR_IRQS ;
 int BCM1480_NR_IRQS_HALF ;
 int IOADDR (scalar_t__) ;
 scalar_t__ R_BCM1480_IMR_INTERRUPT_MASK_H ;
 int ____raw_readq (int ) ;
 int ____raw_writeq (int,int ) ;
 int bcm1480_imr_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

void bcm1480_mask_irq(int cpu, int irq)
{
 unsigned long flags, hl_spacing;
 u64 cur_ints;

 raw_spin_lock_irqsave(&bcm1480_imr_lock, flags);
 hl_spacing = 0;
 if ((irq >= BCM1480_NR_IRQS_HALF) && (irq <= BCM1480_NR_IRQS)) {
  hl_spacing = BCM1480_IMR_HL_SPACING;
  irq -= BCM1480_NR_IRQS_HALF;
 }
 cur_ints = ____raw_readq(IOADDR(A_BCM1480_IMR_MAPPER(cpu) + R_BCM1480_IMR_INTERRUPT_MASK_H + hl_spacing));
 cur_ints |= (((u64) 1) << irq);
 ____raw_writeq(cur_ints, IOADDR(A_BCM1480_IMR_MAPPER(cpu) + R_BCM1480_IMR_INTERRUPT_MASK_H + hl_spacing));
 raw_spin_unlock_irqrestore(&bcm1480_imr_lock, flags);
}
