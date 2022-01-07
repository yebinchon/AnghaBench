
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 scalar_t__ A_IMR_MAPPER (int) ;
 int IOADDR (scalar_t__) ;
 scalar_t__ R_IMR_INTERRUPT_MASK ;
 int ____raw_readq (int ) ;
 int ____raw_writeq (int,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int sb1250_imr_lock ;

void sb1250_unmask_irq(int cpu, int irq)
{
 unsigned long flags;
 u64 cur_ints;

 raw_spin_lock_irqsave(&sb1250_imr_lock, flags);
 cur_ints = ____raw_readq(IOADDR(A_IMR_MAPPER(cpu) +
     R_IMR_INTERRUPT_MASK));
 cur_ints &= ~(((u64) 1) << irq);
 ____raw_writeq(cur_ints, IOADDR(A_IMR_MAPPER(cpu) +
     R_IMR_INTERRUPT_MASK));
 raw_spin_unlock_irqrestore(&sb1250_imr_lock, flags);
}
