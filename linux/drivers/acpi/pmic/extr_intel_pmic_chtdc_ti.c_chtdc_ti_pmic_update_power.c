
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int regmap_update_bits (struct regmap*,int,int,int) ;

__attribute__((used)) static int chtdc_ti_pmic_update_power(struct regmap *regmap, int reg, int bit,
          bool on)
{
 return regmap_update_bits(regmap, reg, 1, on);
}
