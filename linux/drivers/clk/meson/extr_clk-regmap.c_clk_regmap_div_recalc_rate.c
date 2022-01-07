
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_regmap_div_data {unsigned int shift; int width; int flags; int table; int offset; } ;
struct clk_regmap {int map; } ;
struct clk_hw {int dummy; } ;


 unsigned int clk_div_mask (int ) ;
 struct clk_regmap_div_data* clk_get_regmap_div_data (struct clk_regmap*) ;
 unsigned long divider_recalc_rate (struct clk_hw*,unsigned long,unsigned int,int ,int ,int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_regmap_div_recalc_rate(struct clk_hw *hw,
      unsigned long prate)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct clk_regmap_div_data *div = clk_get_regmap_div_data(clk);
 unsigned int val;
 int ret;

 ret = regmap_read(clk->map, div->offset, &val);
 if (ret)

  return 0;

 val >>= div->shift;
 val &= clk_div_mask(div->width);
 return divider_recalc_rate(hw, prate, val, div->table, div->flags,
       div->width);
}
