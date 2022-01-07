
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 scalar_t__ regmap_get_offset (struct regmap*,unsigned int) ;
 int regmap_volatile (struct regmap*,scalar_t__) ;

__attribute__((used)) static bool regmap_volatile_range(struct regmap *map, unsigned int reg,
 size_t num)
{
 unsigned int i;

 for (i = 0; i < num; i++)
  if (!regmap_volatile(map, reg + regmap_get_offset(map, i)))
   return 0;

 return 1;
}
