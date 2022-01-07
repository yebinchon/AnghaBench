
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_regmap_gate_data {int flags; int bit_idx; int offset; } ;
struct clk_regmap {int map; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 int CLK_GATE_SET_TO_DISABLE ;
 struct clk_regmap_gate_data* clk_get_regmap_gate_data (struct clk_regmap*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct clk_regmap* to_clk_regmap (struct clk_hw*) ;

__attribute__((used)) static int clk_regmap_gate_endisable(struct clk_hw *hw, int enable)
{
 struct clk_regmap *clk = to_clk_regmap(hw);
 struct clk_regmap_gate_data *gate = clk_get_regmap_gate_data(clk);
 int set = gate->flags & CLK_GATE_SET_TO_DISABLE ? 1 : 0;

 set ^= enable;

 return regmap_update_bits(clk->map, gate->offset, BIT(gate->bit_idx),
      set ? BIT(gate->bit_idx) : 0);
}
