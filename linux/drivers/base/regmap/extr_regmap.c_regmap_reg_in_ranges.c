
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_range {int dummy; } ;


 scalar_t__ regmap_reg_in_range (unsigned int,struct regmap_range const*) ;

bool regmap_reg_in_ranges(unsigned int reg,
     const struct regmap_range *ranges,
     unsigned int nranges)
{
 const struct regmap_range *r;
 int i;

 for (i = 0, r = ranges; i < nranges; i++, r++)
  if (regmap_reg_in_range(reg, r))
   return 1;
 return 0;
}
