
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regmap {int dummy; } ;


 int BIT (int) ;
 int regmap_update_bits (struct regmap*,int,int,int) ;

__attribute__((used)) static int
intel_bxtwc_pmic_update_policy(struct regmap *regmap,
    int reg, int bit, int enable)
{
 u8 mask = BIT(bit), val = enable << bit;

 return regmap_update_bits(regmap, reg, mask, val);
}
