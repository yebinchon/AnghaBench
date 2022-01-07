
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct regmap {int dummy; } ;


 int EIO ;
 scalar_t__ regmap_read (struct regmap*,int,int*) ;

__attribute__((used)) static int intel_crc_pmic_get_policy(struct regmap *regmap,
     int reg, int bit, u64 *value)
{
 int pen;

 if (regmap_read(regmap, reg, &pen))
  return -EIO;
 *value = pen >> 7;
 return 0;
}
