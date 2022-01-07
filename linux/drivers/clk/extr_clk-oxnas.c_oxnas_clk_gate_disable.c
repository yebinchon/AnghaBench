
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_oxnas_gate {int bit; int regmap; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 int CLK_CLR_REGOFFSET ;
 int regmap_write (int ,int ,int ) ;
 struct clk_oxnas_gate* to_clk_oxnas_gate (struct clk_hw*) ;

__attribute__((used)) static void oxnas_clk_gate_disable(struct clk_hw *hw)
{
 struct clk_oxnas_gate *std = to_clk_oxnas_gate(hw);

 regmap_write(std->regmap, CLK_CLR_REGOFFSET, BIT(std->bit));
}
