
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct cpumask {int dummy; } ;


 int assign_vector_locked (struct irq_data*,int ) ;
 int cpu_online_mask ;
 int cpumask_and (int ,struct cpumask const*,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int vector_lock ;
 int vector_searchmask ;

__attribute__((used)) static int assign_irq_vector(struct irq_data *irqd, const struct cpumask *dest)
{
 unsigned long flags;
 int ret;

 raw_spin_lock_irqsave(&vector_lock, flags);
 cpumask_and(vector_searchmask, dest, cpu_online_mask);
 ret = assign_vector_locked(irqd, vector_searchmask);
 raw_spin_unlock_irqrestore(&vector_lock, flags);
 return ret;
}
