
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int EIO ;
 scalar_t__ regmap_read (struct regmap*,int,int*) ;

__attribute__((used)) static int intel_crc_pmic_get_raw_temp(struct regmap *regmap, int reg)
{
 int temp_l, temp_h;





 if (regmap_read(regmap, reg, &temp_l) ||
     regmap_read(regmap, reg - 1, &temp_h))
  return -EIO;

 return temp_l | (temp_h & 0x3) << 8;
}
