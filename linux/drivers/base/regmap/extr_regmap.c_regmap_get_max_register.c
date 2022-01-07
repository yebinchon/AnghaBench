
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int max_register; } ;


 int EINVAL ;

int regmap_get_max_register(struct regmap *map)
{
 return map->max_register ? map->max_register : -EINVAL;
}
