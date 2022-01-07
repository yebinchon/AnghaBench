
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int regmap_cached (struct regmap*,unsigned int) ;
 scalar_t__ regmap_precious (struct regmap*,unsigned int) ;
 int regmap_readable (struct regmap*,unsigned int) ;

__attribute__((used)) static bool regmap_printable(struct regmap *map, unsigned int reg)
{
 if (regmap_precious(map, reg))
  return 0;

 if (!regmap_readable(map, reg) && !regmap_cached(map, reg))
  return 0;

 return 1;
}
