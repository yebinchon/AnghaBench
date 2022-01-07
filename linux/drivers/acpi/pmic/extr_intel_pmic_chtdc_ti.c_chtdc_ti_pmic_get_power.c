
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct regmap {int dummy; } ;


 int EIO ;
 scalar_t__ regmap_read (struct regmap*,int,int*) ;

__attribute__((used)) static int chtdc_ti_pmic_get_power(struct regmap *regmap, int reg, int bit,
       u64 *value)
{
 int data;

 if (regmap_read(regmap, reg, &data))
  return -EIO;

 *value = data & 1;
 return 0;
}
