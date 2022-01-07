
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regmap_irq_chip_data {int domain; TYPE_2__* chip; } ;
struct TYPE_4__ {TYPE_1__* irqs; } ;
struct TYPE_3__ {int mask; } ;


 int EINVAL ;
 int irq_create_mapping (int ,int) ;

int regmap_irq_get_virq(struct regmap_irq_chip_data *data, int irq)
{

 if (!data->chip->irqs[irq].mask)
  return -EINVAL;

 return irq_create_mapping(data->domain, irq);
}
