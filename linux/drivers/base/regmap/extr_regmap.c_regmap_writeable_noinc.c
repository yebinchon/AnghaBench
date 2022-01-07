
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int (* writeable_noinc_reg ) (int ,unsigned int) ;scalar_t__ wr_noinc_table; int dev; } ;


 int regmap_check_range_table (struct regmap*,unsigned int,scalar_t__) ;
 int stub1 (int ,unsigned int) ;

bool regmap_writeable_noinc(struct regmap *map, unsigned int reg)
{
 if (map->writeable_noinc_reg)
  return map->writeable_noinc_reg(map->dev, reg);

 if (map->wr_noinc_table)
  return regmap_check_range_table(map, reg, map->wr_noinc_table);

 return 1;
}
