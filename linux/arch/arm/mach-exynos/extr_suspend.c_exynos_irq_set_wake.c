
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {scalar_t__ hwirq; } ;
struct exynos_wkup_irq {int mask; scalar_t__ hwirq; } ;
struct TYPE_2__ {struct exynos_wkup_irq* wkup_irq; } ;


 int ENOENT ;
 int exynos_irqwake_intmask ;
 TYPE_1__* pm_data ;

__attribute__((used)) static int exynos_irq_set_wake(struct irq_data *data, unsigned int state)
{
 const struct exynos_wkup_irq *wkup_irq;

 if (!pm_data->wkup_irq)
  return -ENOENT;
 wkup_irq = pm_data->wkup_irq;

 while (wkup_irq->mask) {
  if (wkup_irq->hwirq == data->hwirq) {
   if (!state)
    exynos_irqwake_intmask |= wkup_irq->mask;
   else
    exynos_irqwake_intmask &= ~wkup_irq->mask;
   return 0;
  }
  ++wkup_irq;
 }

 return -ENOENT;
}
