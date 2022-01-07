
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int reserve_irq_vector_locked (struct irq_data*) ;
 int vector_lock ;

__attribute__((used)) static int reserve_irq_vector(struct irq_data *irqd)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&vector_lock, flags);
 reserve_irq_vector_locked(irqd);
 raw_spin_unlock_irqrestore(&vector_lock, flags);
 return 0;
}
