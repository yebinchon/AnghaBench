
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_regmap_div_data {unsigned int shift; int width; int offset; int flags; int table; } ;
struct clk_regmap {int map; } ;
struct clk_hw {int dummy; } ;


 int clk_div_mask (int ) ;
 struct clk_regmap_div_data* clk_get_regmap_div_data (struct clk_regmap*) ;
 int divider_get_val (unsigned long,unsigned long,int ,int ,int ) ;
 int regmap_update_bits (int ,int ,int,unsigned int) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static int clk_regmap_div_set_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long parent_rate)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct clk_regmap_div_data *div = clk_get_regmap_div_data(clk);
 unsigned int val;
 int ret;

 ret = divider_get_val(rate, parent_rate, div->table, div->width,
         div->flags);
 if (ret < 0)
  return ret;

 val = (unsigned int)ret << div->shift;
 return regmap_update_bits(clk->map, div->offset,
      clk_div_mask(div->width) << div->shift, val);
}
