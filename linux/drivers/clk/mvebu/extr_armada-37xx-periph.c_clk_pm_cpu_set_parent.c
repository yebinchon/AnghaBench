
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct regmap {int dummy; } ;
struct clk_pm_cpu {struct regmap* nb_pm_base; } ;
struct clk_hw {int dummy; } ;


 unsigned int ARMADA_37XX_NB_TBG_SEL_MASK ;
 unsigned int ARMADA_37XX_NB_TBG_SEL_OFF ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int LOAD_LEVEL_NR ;
 scalar_t__ armada_3700_pm_dvfs_is_enabled (struct regmap*) ;
 int armada_3700_pm_dvfs_update_regs (int,unsigned int*,unsigned int*) ;
 int regmap_update_bits (struct regmap*,unsigned int,unsigned int,unsigned int) ;
 struct clk_pm_cpu* to_clk_pm_cpu (struct clk_hw*) ;

__attribute__((used)) static int clk_pm_cpu_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_pm_cpu *pm_cpu = to_clk_pm_cpu(hw);
 struct regmap *base = pm_cpu->nb_pm_base;
 int load_level;





 if (IS_ERR(base) || armada_3700_pm_dvfs_is_enabled(base))
  return -EINVAL;


 for (load_level = 0; load_level < LOAD_LEVEL_NR; load_level++) {
  unsigned int reg, mask, val,
   offset = ARMADA_37XX_NB_TBG_SEL_OFF;

  armada_3700_pm_dvfs_update_regs(load_level, &reg, &offset);

  val = index << offset;
  mask = ARMADA_37XX_NB_TBG_SEL_MASK << offset;
  regmap_update_bits(base, reg, mask, val);
 }
 return 0;
}
