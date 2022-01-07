
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_clk_gate {int bit; int reg; int regmap; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 int regmap_write_bits (int ,int ,int ,int ) ;
 struct uniphier_clk_gate* to_uniphier_clk_gate (struct clk_hw*) ;

__attribute__((used)) static int uniphier_clk_gate_endisable(struct clk_hw *hw, int enable)
{
 struct uniphier_clk_gate *gate = to_uniphier_clk_gate(hw);

 return regmap_write_bits(gate->regmap, gate->reg, BIT(gate->bit),
     enable ? BIT(gate->bit) : 0);
}
