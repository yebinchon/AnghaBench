
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int (* precious_reg ) (int ,unsigned int) ;scalar_t__ precious_table; int dev; } ;


 int regmap_check_range_table (struct regmap*,unsigned int,scalar_t__) ;
 int regmap_readable (struct regmap*,unsigned int) ;
 int stub1 (int ,unsigned int) ;

bool regmap_precious(struct regmap *map, unsigned int reg)
{
 if (!regmap_readable(map, reg))
  return 0;

 if (map->precious_reg)
  return map->precious_reg(map->dev, reg);

 if (map->precious_table)
  return regmap_check_range_table(map, reg, map->precious_table);

 return 0;
}
