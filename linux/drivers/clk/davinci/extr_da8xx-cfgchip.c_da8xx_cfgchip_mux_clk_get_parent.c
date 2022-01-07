
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct da8xx_cfgchip_mux_clk {unsigned int mask; int reg; int regmap; } ;
struct clk_hw {int dummy; } ;


 int regmap_read (int ,int ,unsigned int*) ;
 struct da8xx_cfgchip_mux_clk* to_da8xx_cfgchip_mux_clk (struct clk_hw*) ;

__attribute__((used)) static u8 da8xx_cfgchip_mux_clk_get_parent(struct clk_hw *hw)
{
 struct da8xx_cfgchip_mux_clk *clk = to_da8xx_cfgchip_mux_clk(hw);
 unsigned int val;

 regmap_read(clk->regmap, clk->reg, &val);

 return (val & clk->mask) ? 1 : 0;
}
