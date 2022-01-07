
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_access_table {int n_yes_ranges; int yes_ranges; int n_no_ranges; int no_ranges; } ;
struct regmap {int dummy; } ;


 int regmap_reg_in_ranges (unsigned int,int ,int ) ;

bool regmap_check_range_table(struct regmap *map, unsigned int reg,
         const struct regmap_access_table *table)
{

 if (regmap_reg_in_ranges(reg, table->no_ranges, table->n_no_ranges))
  return 0;


 if (!table->n_yes_ranges)
  return 1;

 return regmap_reg_in_ranges(reg, table->yes_ranges,
        table->n_yes_ranges);
}
