
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_irq_chip_data {int irq; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 int devm_regmap_irq_chip_match ;
 int devm_regmap_irq_chip_release ;
 int devres_release (struct device*,int ,int ,struct regmap_irq_chip_data*) ;

void devm_regmap_del_irq_chip(struct device *dev, int irq,
         struct regmap_irq_chip_data *data)
{
 int rc;

 WARN_ON(irq != data->irq);
 rc = devres_release(dev, devm_regmap_irq_chip_release,
       devm_regmap_irq_chip_match, data);

 if (rc != 0)
  WARN_ON(rc);
}
