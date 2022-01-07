
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;
struct cpumask {int dummy; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int titan_cached_irq_mask ;
 int titan_cpu_set_irq_affinity (unsigned int,struct cpumask const) ;
 int titan_irq_lock ;
 int titan_update_irq_hw (int ) ;

__attribute__((used)) static int
titan_set_irq_affinity(struct irq_data *d, const struct cpumask *affinity,
         bool force)
{
 unsigned int irq = d->irq;
 spin_lock(&titan_irq_lock);
 titan_cpu_set_irq_affinity(irq - 16, *affinity);
 titan_update_irq_hw(titan_cached_irq_mask);
 spin_unlock(&titan_irq_lock);

 return 0;
}
