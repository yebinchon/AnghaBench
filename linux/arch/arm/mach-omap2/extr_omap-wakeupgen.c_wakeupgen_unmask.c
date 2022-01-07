
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {size_t hwirq; } ;


 int _wakeupgen_set (size_t,int ) ;
 int irq_chip_unmask_parent (struct irq_data*) ;
 int * irq_target_cpu ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int wakeupgen_lock ;

__attribute__((used)) static void wakeupgen_unmask(struct irq_data *d)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&wakeupgen_lock, flags);
 _wakeupgen_set(d->hwirq, irq_target_cpu[d->hwirq]);
 raw_spin_unlock_irqrestore(&wakeupgen_lock, flags);
 irq_chip_unmask_parent(d);
}
