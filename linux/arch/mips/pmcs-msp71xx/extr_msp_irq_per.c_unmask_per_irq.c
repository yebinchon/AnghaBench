
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int MSP_PER_INTBASE ;
 int* PER_INT_MSK_REG ;
 int per_lock ;
 int per_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void unmask_per_irq(struct irq_data *d)
{






 *PER_INT_MSK_REG |= (1 << (d->irq - MSP_PER_INTBASE));

 per_wmb();
}
