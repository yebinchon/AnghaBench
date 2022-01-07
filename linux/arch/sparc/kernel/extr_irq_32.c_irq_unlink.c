
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_bucket {size_t pil; struct irq_bucket* next; } ;


 int BUG_ON (int) ;
 unsigned int NR_IRQS ;
 size_t SUN4D_MAX_IRQ ;
 struct irq_bucket** irq_map ;
 int irq_map_lock ;
 struct irq_bucket* irq_table ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void irq_unlink(unsigned int irq)
{
 struct irq_bucket *p, **pnext;
 unsigned long flags;

 BUG_ON(irq >= NR_IRQS);

 spin_lock_irqsave(&irq_map_lock, flags);

 p = &irq_table[irq];
 BUG_ON(p->pil >= SUN4D_MAX_IRQ);
 pnext = &irq_map[p->pil];
 while (*pnext != p)
  pnext = &(*pnext)->next;
 *pnext = p->next;

 spin_unlock_irqrestore(&irq_map_lock, flags);
}
