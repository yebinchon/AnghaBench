
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int SI5351_DEVICE_STATUS ;

__attribute__((used)) static bool si5351_regmap_is_writeable(struct device *dev, unsigned int reg)
{

 if (reg >= 4 && reg <= 8)
  return 0;
 if (reg >= 10 && reg <= 14)
  return 0;
 if (reg >= 173 && reg <= 176)
  return 0;
 if (reg >= 178 && reg <= 182)
  return 0;

 if (reg == SI5351_DEVICE_STATUS)
  return 0;
 return 1;
}
