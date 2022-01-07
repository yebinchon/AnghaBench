
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u32 ;
struct owl_factor_hw {unsigned long long shift; int fct_flags; int reg; struct clk_factor_table* table; } ;
struct TYPE_2__ {int clk; } ;
struct owl_clk_common {TYPE_1__ hw; int regmap; } ;
struct clk_factor_table {int dummy; } ;


 int CLK_DIVIDER_ALLOW_ZERO ;
 int WARN (int,char*,int ) ;
 int __clk_get_name (int ) ;
 int _get_table_div_mul (struct clk_factor_table const*,unsigned long long,unsigned long long*,unsigned long long*) ;
 unsigned long long div_mask (struct owl_factor_hw const*) ;
 int do_div (unsigned long long,unsigned long long) ;
 int regmap_read (int ,int ,unsigned long long*) ;

unsigned long owl_factor_helper_recalc_rate(struct owl_clk_common *common,
      const struct owl_factor_hw *factor_hw,
      unsigned long parent_rate)
{
 const struct clk_factor_table *clkt = factor_hw->table;
 unsigned long long int rate;
 u32 reg, val, mul, div;

 div = 0;
 mul = 0;

 regmap_read(common->regmap, factor_hw->reg, &reg);

 val = reg >> factor_hw->shift;
 val &= div_mask(factor_hw);

 _get_table_div_mul(clkt, val, &mul, &div);
 if (!div) {
  WARN(!(factor_hw->fct_flags & CLK_DIVIDER_ALLOW_ZERO),
   "%s: Zero divisor and CLK_DIVIDER_ALLOW_ZERO not set\n",
   __clk_get_name(common->hw.clk));
  return parent_rate;
 }

 rate = (unsigned long long int)parent_rate * mul;
 do_div(rate, div);

 return rate;
}
