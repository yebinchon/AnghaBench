
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {TYPE_1__* reg_defaults; int no_sync_defaults; } ;
struct TYPE_2__ {unsigned int def; } ;


 int regcache_lookup_reg (struct regmap*,unsigned int) ;

__attribute__((used)) static bool regcache_reg_needs_sync(struct regmap *map, unsigned int reg,
        unsigned int val)
{
 int ret;


 if (!map->no_sync_defaults)
  return 1;


 ret = regcache_lookup_reg(map, reg);
 if (ret >= 0 && val == map->reg_defaults[ret].def)
  return 0;
 return 1;
}
