
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef unsigned int u64 ;
struct regmap {int dummy; } ;


 unsigned int BIT (int) ;
 int EIO ;
 scalar_t__ regmap_read (struct regmap*,int,unsigned int*) ;

__attribute__((used)) static int
intel_bxtwc_pmic_get_policy(struct regmap *regmap, int reg, int bit, u64 *value)
{
 u8 mask = BIT(bit);
 unsigned int val;

 if (regmap_read(regmap, reg, &val))
  return -EIO;

 *value = (val & mask) >> bit;
 return 0;
}
