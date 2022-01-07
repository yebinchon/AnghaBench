
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regmap {int dummy; } ;


 int regmap_update_bits (struct regmap*,int,int,int) ;

__attribute__((used)) static int intel_bxtwc_pmic_update_power(struct regmap *regmap, int reg,
  int bit, bool on)
{
 u8 val, mask = bit;

 if (on)
  val = 0xFF;
 else
  val = 0x0;

 return regmap_update_bits(regmap, reg, mask, val);
}
