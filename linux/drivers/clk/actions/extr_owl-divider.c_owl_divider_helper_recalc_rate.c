
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owl_divider_hw {unsigned int shift; int width; int div_flags; int table; int reg; } ;
struct owl_clk_common {int hw; int regmap; } ;


 unsigned long divider_recalc_rate (int *,unsigned long,unsigned long,int ,int ,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

unsigned long owl_divider_helper_recalc_rate(struct owl_clk_common *common,
      const struct owl_divider_hw *div_hw,
      unsigned long parent_rate)
{
 unsigned long val;
 unsigned int reg;

 regmap_read(common->regmap, div_hw->reg, &reg);
 val = reg >> div_hw->shift;
 val &= (1 << div_hw->width) - 1;

 return divider_recalc_rate(&common->hw, parent_rate,
       val, div_hw->table,
       div_hw->div_flags,
       div_hw->width);
}
