
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int irq; } ;


 int GT641XX_IRQ_TO_BIT (int ) ;
 int GT_INTRMASK_OFS ;
 int GT_READ (int ) ;
 int GT_WRITE (int ,int ) ;
 int gt641xx_irq_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void unmask_gt641xx_irq(struct irq_data *d)
{
 unsigned long flags;
 u32 mask;

 raw_spin_lock_irqsave(&gt641xx_irq_lock, flags);
 mask = GT_READ(GT_INTRMASK_OFS);
 mask |= GT641XX_IRQ_TO_BIT(d->irq);
 GT_WRITE(GT_INTRMASK_OFS, mask);
 raw_spin_unlock_irqrestore(&gt641xx_irq_lock, flags);
}
