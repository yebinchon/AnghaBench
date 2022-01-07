
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct regmap {int dummy; } ;


 int EIO ;
 scalar_t__ regmap_read (struct regmap*,int,unsigned int*) ;

__attribute__((used)) static int tps68470_pmic_get_vr_val(struct regmap *regmap, int reg,
           int bitmask, u64 *value)
{
 unsigned int data;

 if (regmap_read(regmap, reg, &data))
  return -EIO;

 *value = data & bitmask;
 return 0;
}
