
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct da8xx_cfgchip_mux_clk {unsigned int mask; int reg; int regmap; } ;
struct clk_hw {int dummy; } ;


 int regmap_write_bits (int ,int ,unsigned int,unsigned int) ;
 struct da8xx_cfgchip_mux_clk* to_da8xx_cfgchip_mux_clk (struct clk_hw*) ;

__attribute__((used)) static int da8xx_cfgchip_mux_clk_set_parent(struct clk_hw *hw, u8 index)
{
 struct da8xx_cfgchip_mux_clk *clk = to_da8xx_cfgchip_mux_clk(hw);
 unsigned int val = index ? clk->mask : 0;

 return regmap_write_bits(clk->regmap, clk->reg, clk->mask, val);
}
