
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da8xx_cfgchip_gate_clk {unsigned int mask; int reg; int regmap; } ;
struct clk_hw {int dummy; } ;


 int regmap_read (int ,int ,unsigned int*) ;
 struct da8xx_cfgchip_gate_clk* to_da8xx_cfgchip_gate_clk (struct clk_hw*) ;

__attribute__((used)) static int da8xx_cfgchip_gate_clk_is_enabled(struct clk_hw *hw)
{
 struct da8xx_cfgchip_gate_clk *clk = to_da8xx_cfgchip_gate_clk(hw);
 unsigned int val;

 regmap_read(clk->regmap, clk->reg, &val);

 return !!(val & clk->mask);
}
