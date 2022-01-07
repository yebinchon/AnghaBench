
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct clk_regmap_mux {unsigned int shift; scalar_t__ parent_map; int reg; scalar_t__ width; } ;
struct clk_regmap {int regmap; } ;
struct clk_hw {int dummy; } ;


 unsigned int GENMASK (scalar_t__,int ) ;
 unsigned int qcom_find_src_index (struct clk_hw*,scalar_t__,unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;
 struct clk_regmap_mux* to_clk_regmap_mux (struct clk_hw*) ;

__attribute__((used)) static u8 mux_get_parent(struct clk_hw *hw)
{
 struct clk_regmap_mux *mux = to_clk_regmap_mux(hw);
 struct clk_regmap *clkr = to_clk_regmap(hw);
 unsigned int mask = GENMASK(mux->width - 1, 0);
 unsigned int val;

 regmap_read(clkr->regmap, mux->reg, &val);

 val >>= mux->shift;
 val &= mask;

 if (mux->parent_map)
  return qcom_find_src_index(hw, mux->parent_map, val);

 return val;
}
