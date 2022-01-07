
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __gsi_to_irq (unsigned int) ;
 int iosapic_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
gsi_to_irq (unsigned int gsi)
{
 unsigned long flags;
 int irq;

 spin_lock_irqsave(&iosapic_lock, flags);
 irq = __gsi_to_irq(gsi);
 spin_unlock_irqrestore(&iosapic_lock, flags);
 return irq;
}
