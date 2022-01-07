
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 unsigned long cached_irq_mask ;
 int dp264_irq_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tsunami_update_irq_hw (unsigned long) ;

__attribute__((used)) static void
clipper_enable_irq(struct irq_data *d)
{
 spin_lock(&dp264_irq_lock);
 cached_irq_mask |= 1UL << (d->irq - 16);
 tsunami_update_irq_hw(cached_irq_mask);
 spin_unlock(&dp264_irq_lock);
}
