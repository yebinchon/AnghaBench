
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int SUN8I_R40_GMAC_CFG_REG ;

__attribute__((used)) static bool sun8i_r40_ccu_regmap_accessible_reg(struct device *dev,
      unsigned int reg)
{
 if (reg == SUN8I_R40_GMAC_CFG_REG)
  return 1;
 return 0;
}
