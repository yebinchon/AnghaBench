
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct clk_regmap_mux {unsigned int shift; int reg; TYPE_1__* parent_map; scalar_t__ width; } ;
struct clk_regmap {int regmap; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {size_t cfg; } ;


 unsigned int GENMASK (scalar_t__,unsigned int) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;
 struct clk_regmap_mux* to_clk_regmap_mux (struct clk_hw*) ;

__attribute__((used)) static int mux_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_regmap_mux *mux = to_clk_regmap_mux(hw);
 struct clk_regmap *clkr = to_clk_regmap(hw);
 unsigned int mask = GENMASK(mux->width + mux->shift - 1, mux->shift);
 unsigned int val;

 if (mux->parent_map)
  index = mux->parent_map[index].cfg;

 val = index;
 val <<= mux->shift;

 return regmap_update_bits(clkr->regmap, mux->reg, mask, val);
}
