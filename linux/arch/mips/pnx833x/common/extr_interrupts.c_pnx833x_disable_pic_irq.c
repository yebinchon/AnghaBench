
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;


 unsigned int PNX833X_PIC_IRQ_BASE ;
 int pnx833x_hard_disable_pic_irq (unsigned int) ;
 int pnx833x_irq_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pnx833x_disable_pic_irq(struct irq_data *d)
{
 unsigned long flags;
 unsigned int pic_irq = d->irq - PNX833X_PIC_IRQ_BASE;

 raw_spin_lock_irqsave(&pnx833x_irq_lock, flags);
 pnx833x_hard_disable_pic_irq(pic_irq);
 raw_spin_unlock_irqrestore(&pnx833x_irq_lock, flags);
}
