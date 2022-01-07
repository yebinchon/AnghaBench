
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_oxnas_gate {int bit; int regmap; } ;
struct clk_hw {int dummy; } ;


 unsigned int BIT (int ) ;
 int CLK_STAT_REGOFFSET ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct clk_oxnas_gate* to_clk_oxnas_gate (struct clk_hw*) ;

__attribute__((used)) static int oxnas_clk_gate_is_enabled(struct clk_hw *hw)
{
 struct clk_oxnas_gate *std = to_clk_oxnas_gate(hw);
 int ret;
 unsigned int val;

 ret = regmap_read(std->regmap, CLK_STAT_REGOFFSET, &val);
 if (ret < 0)
  return ret;

 return val & BIT(std->bit);
}
