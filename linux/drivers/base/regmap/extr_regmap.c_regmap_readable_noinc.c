
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int (* readable_noinc_reg ) (int ,unsigned int) ;scalar_t__ rd_noinc_table; int dev; } ;


 int regmap_check_range_table (struct regmap*,unsigned int,scalar_t__) ;
 int stub1 (int ,unsigned int) ;

bool regmap_readable_noinc(struct regmap *map, unsigned int reg)
{
 if (map->readable_noinc_reg)
  return map->readable_noinc_reg(map->dev, reg);

 if (map->rd_noinc_table)
  return regmap_check_range_table(map, reg, map->rd_noinc_table);

 return 1;
}
