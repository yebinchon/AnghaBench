
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int EIO ;
 scalar_t__ regmap_update_bits (struct regmap*,int,int,int) ;
 scalar_t__ regmap_write (struct regmap*,int,int) ;

__attribute__((used)) static int intel_crc_pmic_update_aux(struct regmap *regmap, int reg, int raw)
{
 return regmap_write(regmap, reg, raw) ||
  regmap_update_bits(regmap, reg - 1, 0x3, raw >> 8) ? -EIO : 0;
}
