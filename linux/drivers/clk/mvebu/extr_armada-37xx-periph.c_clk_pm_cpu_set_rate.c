
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct clk_pm_cpu {struct regmap* nb_pm_base; } ;
struct clk_hw {int dummy; } ;


 unsigned int ARMADA_37XX_NB_CPU_LOAD ;
 unsigned int ARMADA_37XX_NB_CPU_LOAD_MASK ;
 unsigned int ARMADA_37XX_NB_TBG_DIV_MASK ;
 unsigned int ARMADA_37XX_NB_TBG_DIV_OFF ;
 int EINVAL ;
 unsigned int LOAD_LEVEL_NR ;
 int armada_3700_pm_dvfs_is_enabled (struct regmap*) ;
 int armada_3700_pm_dvfs_update_regs (unsigned int,unsigned int*,unsigned int*) ;
 int clk_pm_cpu_set_rate_wa (unsigned long,struct regmap*) ;
 int regmap_read (struct regmap*,unsigned int,unsigned int*) ;
 int regmap_update_bits (struct regmap*,unsigned int,unsigned int,unsigned int) ;
 struct clk_pm_cpu* to_clk_pm_cpu (struct clk_hw*) ;

__attribute__((used)) static int clk_pm_cpu_set_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long parent_rate)
{
 struct clk_pm_cpu *pm_cpu = to_clk_pm_cpu(hw);
 struct regmap *base = pm_cpu->nb_pm_base;
 unsigned int div = parent_rate / rate;
 unsigned int load_level;


 if (!armada_3700_pm_dvfs_is_enabled(base))
  return -EINVAL;

 for (load_level = 0; load_level < LOAD_LEVEL_NR; load_level++) {
  unsigned int reg, mask, val,
   offset = ARMADA_37XX_NB_TBG_DIV_OFF;

  armada_3700_pm_dvfs_update_regs(load_level, &reg, &offset);

  regmap_read(base, reg, &val);
  val >>= offset;
  val &= ARMADA_37XX_NB_TBG_DIV_MASK;

  if (val == div) {





   reg = ARMADA_37XX_NB_CPU_LOAD;
   mask = ARMADA_37XX_NB_CPU_LOAD_MASK;

   clk_pm_cpu_set_rate_wa(rate, base);

   regmap_update_bits(base, reg, mask, load_level);

   return rate;
  }
 }


 return -EINVAL;
}
