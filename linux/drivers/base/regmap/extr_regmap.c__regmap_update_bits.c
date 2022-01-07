
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int (* reg_update_bits ) (int ,unsigned int,unsigned int,unsigned int) ;int bus_context; } ;


 int _regmap_read (struct regmap*,unsigned int,unsigned int*) ;
 int _regmap_write (struct regmap*,unsigned int,unsigned int) ;
 scalar_t__ regmap_volatile (struct regmap*,unsigned int) ;
 int stub1 (int ,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int _regmap_update_bits(struct regmap *map, unsigned int reg,
          unsigned int mask, unsigned int val,
          bool *change, bool force_write)
{
 int ret;
 unsigned int tmp, orig;

 if (change)
  *change = 0;

 if (regmap_volatile(map, reg) && map->reg_update_bits) {
  ret = map->reg_update_bits(map->bus_context, reg, mask, val);
  if (ret == 0 && change)
   *change = 1;
 } else {
  ret = _regmap_read(map, reg, &orig);
  if (ret != 0)
   return ret;

  tmp = orig & ~mask;
  tmp |= val & mask;

  if (force_write || (tmp != orig)) {
   ret = _regmap_write(map, reg, tmp);
   if (ret == 0 && change)
    *change = 1;
  }
 }

 return ret;
}
