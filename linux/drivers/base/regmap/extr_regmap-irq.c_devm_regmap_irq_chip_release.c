
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_irq_chip_data {int irq; } ;
struct device {int dummy; } ;


 int regmap_del_irq_chip (int ,struct regmap_irq_chip_data*) ;

__attribute__((used)) static void devm_regmap_irq_chip_release(struct device *dev, void *res)
{
 struct regmap_irq_chip_data *d = *(struct regmap_irq_chip_data **)res;

 regmap_del_irq_chip(d->irq, d);
}
