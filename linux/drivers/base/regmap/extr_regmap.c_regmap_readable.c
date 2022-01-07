
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ format_write; } ;
struct regmap {unsigned int max_register; int (* readable_reg ) (int ,unsigned int) ;scalar_t__ rd_table; int dev; TYPE_1__ format; int reg_read; } ;


 int regmap_check_range_table (struct regmap*,unsigned int,scalar_t__) ;
 int stub1 (int ,unsigned int) ;

bool regmap_readable(struct regmap *map, unsigned int reg)
{
 if (!map->reg_read)
  return 0;

 if (map->max_register && reg > map->max_register)
  return 0;

 if (map->format.format_write)
  return 0;

 if (map->readable_reg)
  return map->readable_reg(map->dev, reg);

 if (map->rd_table)
  return regmap_check_range_table(map, reg, map->rd_table);

 return 1;
}
