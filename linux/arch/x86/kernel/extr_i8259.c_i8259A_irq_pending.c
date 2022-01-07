
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIC_MASTER_CMD ;
 int PIC_SLAVE_CMD ;
 int i8259A_lock ;
 unsigned int inb (int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int i8259A_irq_pending(unsigned int irq)
{
 unsigned int mask = 1<<irq;
 unsigned long flags;
 int ret;

 raw_spin_lock_irqsave(&i8259A_lock, flags);
 if (irq < 8)
  ret = inb(PIC_MASTER_CMD) & mask;
 else
  ret = inb(PIC_SLAVE_CMD) & (mask >> 8);
 raw_spin_unlock_irqrestore(&i8259A_lock, flags);

 return ret;
}
