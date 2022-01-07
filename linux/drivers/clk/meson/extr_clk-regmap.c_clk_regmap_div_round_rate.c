
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_regmap_div_data {int flags; unsigned int shift; int width; int table; int offset; } ;
struct clk_regmap {int map; } ;
struct clk_hw {int dummy; } ;


 int CLK_DIVIDER_READ_ONLY ;
 unsigned int clk_div_mask (int ) ;
 struct clk_regmap_div_data* clk_get_regmap_div_data (struct clk_regmap*) ;
 long divider_ro_round_rate (struct clk_hw*,unsigned long,unsigned long*,int ,int ,int,unsigned int) ;
 long divider_round_rate (struct clk_hw*,unsigned long,unsigned long*,int ,int ,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static long clk_regmap_div_round_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long *prate)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct clk_regmap_div_data *div = clk_get_regmap_div_data(clk);
 unsigned int val;
 int ret;


 if (div->flags & CLK_DIVIDER_READ_ONLY) {
  ret = regmap_read(clk->map, div->offset, &val);
  if (ret)

   return 0;

  val >>= div->shift;
  val &= clk_div_mask(div->width);

  return divider_ro_round_rate(hw, rate, prate, div->table,
          div->width, div->flags, val);
 }

 return divider_round_rate(hw, rate, prate, div->table, div->width,
      div->flags);
}
