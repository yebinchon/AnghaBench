
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regmap {int dummy; } ;


 int EIO ;
 scalar_t__ regmap_bulk_read (struct regmap*,int,int*,int) ;

__attribute__((used)) static int chtdc_ti_pmic_get_raw_temp(struct regmap *regmap, int reg)
{
 u8 buf[2];

 if (regmap_bulk_read(regmap, reg, buf, 2))
  return -EIO;


 return ((buf[0] & 0x03) << 8) | buf[1];
}
