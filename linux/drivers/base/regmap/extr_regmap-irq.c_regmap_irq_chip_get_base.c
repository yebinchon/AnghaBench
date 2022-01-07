
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_irq_chip_data {int irq_base; } ;


 int WARN_ON (int) ;

int regmap_irq_chip_get_base(struct regmap_irq_chip_data *data)
{
 WARN_ON(!data->irq_base);
 return data->irq_base;
}
