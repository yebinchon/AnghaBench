
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {struct device* dev; } ;
struct device {int dummy; } ;



struct device *regmap_get_device(struct regmap *map)
{
 return map->dev;
}
