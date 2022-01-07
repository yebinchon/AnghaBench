
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cp110_gate_clk {int bit_idx; int regmap; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 int CP110_PM_CLOCK_GATING_REG ;
 int regmap_read (int ,int ,int*) ;
 struct cp110_gate_clk* to_cp110_gate_clk (struct clk_hw*) ;

__attribute__((used)) static int cp110_gate_is_enabled(struct clk_hw *hw)
{
 struct cp110_gate_clk *gate = to_cp110_gate_clk(hw);
 u32 val;

 regmap_read(gate->regmap, CP110_PM_CLOCK_GATING_REG, &val);

 return val & BIT(gate->bit_idx);
}
