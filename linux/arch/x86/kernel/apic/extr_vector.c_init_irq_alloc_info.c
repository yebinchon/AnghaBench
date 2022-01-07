
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_alloc_info {struct cpumask const* mask; } ;
struct cpumask {int dummy; } ;


 int memset (struct irq_alloc_info*,int ,int) ;

void init_irq_alloc_info(struct irq_alloc_info *info,
    const struct cpumask *mask)
{
 memset(info, 0, sizeof(*info));
 info->mask = mask;
}
