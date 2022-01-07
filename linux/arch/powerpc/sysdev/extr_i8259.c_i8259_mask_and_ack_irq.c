
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int cached_21 ;
 int cached_A1 ;
 int i8259_lock ;
 int inb (int) ;
 int outb (int,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void i8259_mask_and_ack_irq(struct irq_data *d)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&i8259_lock, flags);
 if (d->irq > 7) {
  cached_A1 |= 1 << (d->irq-8);
  inb(0xA1);
  outb(cached_A1, 0xA1);
  outb(0x20, 0xA0);
  outb(0x20, 0x20);
 } else {
  cached_21 |= 1 << d->irq;
  inb(0x21);
  outb(cached_21, 0x21);
  outb(0x20, 0x20);
 }
 raw_spin_unlock_irqrestore(&i8259_lock, flags);
}
