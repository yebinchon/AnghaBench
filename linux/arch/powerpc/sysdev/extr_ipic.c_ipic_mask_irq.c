
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct irq_data {int irq; } ;
struct ipic {int regs; } ;
struct TYPE_2__ {int bit; int mask; } ;


 struct ipic* ipic_from_irq (int ) ;
 TYPE_1__* ipic_info ;
 int ipic_lock ;
 int ipic_read (int ,int ) ;
 int ipic_write (int ,int ,int) ;
 unsigned int irqd_to_hwirq (struct irq_data*) ;
 int mb () ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ipic_mask_irq(struct irq_data *d)
{
 struct ipic *ipic = ipic_from_irq(d->irq);
 unsigned int src = irqd_to_hwirq(d);
 unsigned long flags;
 u32 temp;

 raw_spin_lock_irqsave(&ipic_lock, flags);

 temp = ipic_read(ipic->regs, ipic_info[src].mask);
 temp &= ~(1 << (31 - ipic_info[src].bit));
 ipic_write(ipic->regs, ipic_info[src].mask, temp);



 mb();

 raw_spin_unlock_irqrestore(&ipic_lock, flags);
}
