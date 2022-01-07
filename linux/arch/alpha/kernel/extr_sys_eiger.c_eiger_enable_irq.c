
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;


 unsigned long* cached_irq_mask ;
 int eiger_update_irq_hw (unsigned int,unsigned long) ;

__attribute__((used)) static inline void
eiger_enable_irq(struct irq_data *d)
{
 unsigned int irq = d->irq;
 unsigned long mask;
 mask = (cached_irq_mask[irq >= 64] &= ~(1UL << (irq & 63)));
 eiger_update_irq_hw(irq, mask);
}
