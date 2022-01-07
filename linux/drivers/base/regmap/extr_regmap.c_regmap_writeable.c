
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {unsigned int max_register; int (* writeable_reg ) (int ,unsigned int) ;scalar_t__ wr_table; int dev; } ;


 int regmap_check_range_table (struct regmap*,unsigned int,scalar_t__) ;
 int stub1 (int ,unsigned int) ;

bool regmap_writeable(struct regmap *map, unsigned int reg)
{
 if (map->max_register && reg > map->max_register)
  return 0;

 if (map->writeable_reg)
  return map->writeable_reg(map->dev, reg);

 if (map->wr_table)
  return regmap_check_range_table(map, reg, map->wr_table);

 return 1;
}
