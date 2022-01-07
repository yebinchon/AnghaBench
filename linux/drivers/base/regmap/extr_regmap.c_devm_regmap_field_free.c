
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_field {int dummy; } ;
struct device {int dummy; } ;


 int devm_kfree (struct device*,struct regmap_field*) ;

void devm_regmap_field_free(struct device *dev,
 struct regmap_field *field)
{
 devm_kfree(dev, field);
}
