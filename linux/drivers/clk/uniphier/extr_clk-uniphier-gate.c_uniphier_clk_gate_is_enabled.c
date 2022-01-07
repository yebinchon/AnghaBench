
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_clk_gate {int bit; int reg; int regmap; } ;
struct clk_hw {int dummy; } ;


 unsigned int BIT (int ) ;
 int pr_warn (char*) ;
 scalar_t__ regmap_read (int ,int ,unsigned int*) ;
 struct uniphier_clk_gate* to_uniphier_clk_gate (struct clk_hw*) ;

__attribute__((used)) static int uniphier_clk_gate_is_enabled(struct clk_hw *hw)
{
 struct uniphier_clk_gate *gate = to_uniphier_clk_gate(hw);
 unsigned int val;

 if (regmap_read(gate->regmap, gate->reg, &val) < 0)
  pr_warn("is_enabled() may return wrong result\n");

 return !!(val & BIT(gate->bit));
}
