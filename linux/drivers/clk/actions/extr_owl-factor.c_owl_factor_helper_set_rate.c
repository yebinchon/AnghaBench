
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct owl_factor_hw {int shift; int reg; int table; } ;
struct owl_clk_common {int regmap; } ;


 int _get_table_val (int ,unsigned long,unsigned long) ;
 int div_mask (struct owl_factor_hw const*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

int owl_factor_helper_set_rate(const struct owl_clk_common *common,
    const struct owl_factor_hw *factor_hw,
    unsigned long rate,
    unsigned long parent_rate)
{
 u32 val, reg;

 val = _get_table_val(factor_hw->table, rate, parent_rate);

 if (val > div_mask(factor_hw))
  val = div_mask(factor_hw);

 regmap_read(common->regmap, factor_hw->reg, &reg);

 reg &= ~(div_mask(factor_hw) << factor_hw->shift);
 reg |= val << factor_hw->shift;

 regmap_write(common->regmap, factor_hw->reg, reg);

 return 0;
}
