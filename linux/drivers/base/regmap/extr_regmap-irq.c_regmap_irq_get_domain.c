
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_irq_chip_data {struct irq_domain* domain; } ;
struct irq_domain {int dummy; } ;



struct irq_domain *regmap_irq_get_domain(struct regmap_irq_chip_data *data)
{
 if (data)
  return data->domain;
 else
  return ((void*)0);
}
