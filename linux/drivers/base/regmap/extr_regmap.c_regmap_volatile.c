
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int format_write; } ;
struct regmap {int (* volatile_reg ) (int ,unsigned int) ;scalar_t__ cache_ops; scalar_t__ volatile_table; int dev; TYPE_1__ format; } ;


 int regmap_check_range_table (struct regmap*,unsigned int,scalar_t__) ;
 int regmap_readable (struct regmap*,unsigned int) ;
 int stub1 (int ,unsigned int) ;

bool regmap_volatile(struct regmap *map, unsigned int reg)
{
 if (!map->format.format_write && !regmap_readable(map, reg))
  return 0;

 if (map->volatile_reg)
  return map->volatile_reg(map->dev, reg);

 if (map->volatile_table)
  return regmap_check_range_table(map, reg, map->volatile_table);

 if (map->cache_ops)
  return 0;
 else
  return 1;
}
