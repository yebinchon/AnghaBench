
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da8xx_cfgchip_gate_clk {int mask; int reg; int regmap; } ;
struct clk_hw {int dummy; } ;


 int regmap_write_bits (int ,int ,int ,int ) ;
 struct da8xx_cfgchip_gate_clk* to_da8xx_cfgchip_gate_clk (struct clk_hw*) ;

__attribute__((used)) static void da8xx_cfgchip_gate_clk_disable(struct clk_hw *hw)
{
 struct da8xx_cfgchip_gate_clk *clk = to_da8xx_cfgchip_gate_clk(hw);

 regmap_write_bits(clk->regmap, clk->reg, clk->mask, 0);
}
