
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int JAZZ_IO_IRQ_ENABLE ;
 int JAZZ_IRQ_START ;
 int r4030_lock ;
 unsigned int r4030_read_reg16 (int ) ;
 int r4030_write_reg16 (int ,unsigned int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void enable_r4030_irq(struct irq_data *d)
{
 unsigned int mask = 1 << (d->irq - JAZZ_IRQ_START);
 unsigned long flags;

 raw_spin_lock_irqsave(&r4030_lock, flags);
 mask |= r4030_read_reg16(JAZZ_IO_IRQ_ENABLE);
 r4030_write_reg16(JAZZ_IO_IRQ_ENABLE, mask);
 raw_spin_unlock_irqrestore(&r4030_lock, flags);
}
