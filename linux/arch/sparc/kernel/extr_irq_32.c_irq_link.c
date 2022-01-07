
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_bucket {unsigned int pil; struct irq_bucket* next; } ;


 int BUG_ON (int) ;
 unsigned int NR_IRQS ;
 unsigned int SUN4D_MAX_IRQ ;
 struct irq_bucket** irq_map ;
 int irq_map_lock ;
 struct irq_bucket* irq_table ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void irq_link(unsigned int irq)
{
 struct irq_bucket *p;
 unsigned long flags;
 unsigned int pil;

 BUG_ON(irq >= NR_IRQS);

 spin_lock_irqsave(&irq_map_lock, flags);

 p = &irq_table[irq];
 pil = p->pil;
 BUG_ON(pil >= SUN4D_MAX_IRQ);
 p->next = irq_map[pil];
 irq_map[pil] = p;

 spin_unlock_irqrestore(&irq_map_lock, flags);
}
