
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int ARMADA_37XX_NB_DFS_EN ;
 unsigned int ARMADA_37XX_NB_DYN_MOD ;
 unsigned int BIT (int ) ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int regmap_read (struct regmap*,unsigned int,unsigned int*) ;

__attribute__((used)) static bool armada_3700_pm_dvfs_is_enabled(struct regmap *base)
{
 unsigned int val, reg = ARMADA_37XX_NB_DYN_MOD;

 if (IS_ERR(base))
  return 0;

 regmap_read(base, reg, &val);

 return !!(val & BIT(ARMADA_37XX_NB_DFS_EN));
}
