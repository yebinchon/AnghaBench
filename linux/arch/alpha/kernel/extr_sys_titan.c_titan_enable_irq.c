
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 unsigned long titan_cached_irq_mask ;
 int titan_irq_lock ;
 int titan_update_irq_hw (unsigned long) ;

__attribute__((used)) static inline void
titan_enable_irq(struct irq_data *d)
{
 unsigned int irq = d->irq;
 spin_lock(&titan_irq_lock);
 titan_cached_irq_mask |= 1UL << (irq - 16);
 titan_update_irq_hw(titan_cached_irq_mask);
 spin_unlock(&titan_irq_lock);
}
