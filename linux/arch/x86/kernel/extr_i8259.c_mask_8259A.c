
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIC_MASTER_IMR ;
 int PIC_SLAVE_IMR ;
 int i8259A_lock ;
 int outb (int,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mask_8259A(void)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&i8259A_lock, flags);

 outb(0xff, PIC_MASTER_IMR);
 outb(0xff, PIC_SLAVE_IMR);

 raw_spin_unlock_irqrestore(&i8259A_lock, flags);
}
