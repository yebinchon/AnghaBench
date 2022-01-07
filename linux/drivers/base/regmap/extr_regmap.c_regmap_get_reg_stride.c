
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int reg_stride; } ;



int regmap_get_reg_stride(struct regmap *map)
{
 return map->reg_stride;
}
