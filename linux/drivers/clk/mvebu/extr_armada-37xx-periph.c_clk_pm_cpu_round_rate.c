
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct clk_pm_cpu {struct regmap* nb_pm_base; } ;
struct clk_hw {int dummy; } ;


 unsigned int ARMADA_37XX_NB_TBG_DIV_MASK ;
 unsigned int ARMADA_37XX_NB_TBG_DIV_OFF ;
 long EINVAL ;
 unsigned int LOAD_LEVEL_NR ;
 int armada_3700_pm_dvfs_is_enabled (struct regmap*) ;
 int armada_3700_pm_dvfs_update_regs (unsigned int,unsigned int*,unsigned int*) ;
 int regmap_read (struct regmap*,unsigned int,unsigned int*) ;
 struct clk_pm_cpu* to_clk_pm_cpu (struct clk_hw*) ;

__attribute__((used)) static long clk_pm_cpu_round_rate(struct clk_hw *hw, unsigned long rate,
      unsigned long *parent_rate)
{
 struct clk_pm_cpu *pm_cpu = to_clk_pm_cpu(hw);
 struct regmap *base = pm_cpu->nb_pm_base;
 unsigned int div = *parent_rate / rate;
 unsigned int load_level;

 if (!armada_3700_pm_dvfs_is_enabled(base))
  return -EINVAL;

 for (load_level = 0; load_level < LOAD_LEVEL_NR; load_level++) {
  unsigned int reg, val, offset = ARMADA_37XX_NB_TBG_DIV_OFF;

  armada_3700_pm_dvfs_update_regs(load_level, &reg, &offset);

  regmap_read(base, reg, &val);

  val >>= offset;
  val &= ARMADA_37XX_NB_TBG_DIV_MASK;
  if (val == div)





   return *parent_rate / div;
 }


 return -EINVAL;
}
