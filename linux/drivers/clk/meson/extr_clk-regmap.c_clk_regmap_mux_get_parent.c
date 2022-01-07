
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_regmap_mux_data {unsigned int shift; unsigned int mask; int flags; int table; int offset; } ;
struct clk_regmap {int map; } ;
struct clk_hw {int dummy; } ;


 struct clk_regmap_mux_data* clk_get_regmap_mux_data (struct clk_regmap*) ;
 int clk_mux_val_to_index (struct clk_hw*,int ,int ,unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static u8 clk_regmap_mux_get_parent(struct clk_hw *hw)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct clk_regmap_mux_data *mux = clk_get_regmap_mux_data(clk);
 unsigned int val;
 int ret;

 ret = regmap_read(clk->map, mux->offset, &val);
 if (ret)
  return ret;

 val >>= mux->shift;
 val &= mux->mask;
 return clk_mux_val_to_index(hw, mux->table, mux->flags, val);
}
