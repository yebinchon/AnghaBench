
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_irq_chip_data {int dummy; } ;
struct regmap_irq_chip {int dummy; } ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_regmap_irq_chip_release ;
 int devres_add (struct device*,struct regmap_irq_chip_data**) ;
 struct regmap_irq_chip_data** devres_alloc (int ,int,int ) ;
 int devres_free (struct regmap_irq_chip_data**) ;
 int regmap_add_irq_chip (struct regmap*,int,int,int,struct regmap_irq_chip const*,struct regmap_irq_chip_data**) ;

int devm_regmap_add_irq_chip(struct device *dev, struct regmap *map, int irq,
        int irq_flags, int irq_base,
        const struct regmap_irq_chip *chip,
        struct regmap_irq_chip_data **data)
{
 struct regmap_irq_chip_data **ptr, *d;
 int ret;

 ptr = devres_alloc(devm_regmap_irq_chip_release, sizeof(*ptr),
      GFP_KERNEL);
 if (!ptr)
  return -ENOMEM;

 ret = regmap_add_irq_chip(map, irq, irq_flags, irq_base,
      chip, &d);
 if (ret < 0) {
  devres_free(ptr);
  return ret;
 }

 *ptr = d;
 devres_add(dev, ptr);
 *data = d;
 return 0;
}
