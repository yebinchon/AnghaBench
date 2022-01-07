
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int EIO ;
 int PMIC_A0LOCK_REG ;
 scalar_t__ regmap_read (struct regmap*,int,int*) ;
 scalar_t__ regmap_update_bits (struct regmap*,int,int,int) ;
 scalar_t__ regmap_write (struct regmap*,int,int) ;

__attribute__((used)) static int intel_crc_pmic_update_policy(struct regmap *regmap,
     int reg, int bit, int enable)
{
 int alert0;


 if (regmap_read(regmap, PMIC_A0LOCK_REG, &alert0))
  return -EIO;

 if (regmap_update_bits(regmap, PMIC_A0LOCK_REG, 0x01, 0))
  return -EIO;

 if (regmap_update_bits(regmap, reg, 0x80, enable << 7))
  return -EIO;


 if (regmap_write(regmap, PMIC_A0LOCK_REG, alert0))
  return -EIO;

 return 0;
}
