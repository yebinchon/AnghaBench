
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;
struct cpumask {int dummy; } ;


 int cached_irq_mask ;
 int cpu_set_irq_affinity (int ,struct cpumask const) ;
 int dp264_irq_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tsunami_update_irq_hw (int ) ;

__attribute__((used)) static int
dp264_set_affinity(struct irq_data *d, const struct cpumask *affinity,
     bool force)
{
 spin_lock(&dp264_irq_lock);
 cpu_set_irq_affinity(d->irq, *affinity);
 tsunami_update_irq_hw(cached_irq_mask);
 spin_unlock(&dp264_irq_lock);

 return 0;
}
