
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct hub_irq_data {int cpu; } ;
struct cpumask {int dummy; } ;


 int EINVAL ;
 int cpumask_of (int ) ;
 int disable_hub_irq (struct irq_data*) ;
 int enable_hub_irq (struct irq_data*) ;
 struct hub_irq_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_data_update_effective_affinity (struct irq_data*,int ) ;
 scalar_t__ irqd_is_started (struct irq_data*) ;
 int setup_hub_mask (struct hub_irq_data*,struct cpumask const*) ;

__attribute__((used)) static int set_affinity_hub_irq(struct irq_data *d, const struct cpumask *mask,
    bool force)
{
 struct hub_irq_data *hd = irq_data_get_irq_chip_data(d);

 if (!hd)
  return -EINVAL;

 if (irqd_is_started(d))
  disable_hub_irq(d);

 setup_hub_mask(hd, mask);

 if (irqd_is_started(d))
  enable_hub_irq(d);

 irq_data_update_effective_affinity(d, cpumask_of(hd->cpu));

 return 0;
}
