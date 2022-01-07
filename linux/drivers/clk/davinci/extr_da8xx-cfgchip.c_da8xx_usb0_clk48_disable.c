
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da8xx_usb0_clk48 {int regmap; } ;
struct clk_hw {int dummy; } ;


 int CFGCHIP (int) ;
 unsigned int CFGCHIP2_PHYPWRDN ;
 int regmap_write_bits (int ,int ,unsigned int,unsigned int) ;
 struct da8xx_usb0_clk48* to_da8xx_usb0_clk48 (struct clk_hw*) ;

__attribute__((used)) static void da8xx_usb0_clk48_disable(struct clk_hw *hw)
{
 struct da8xx_usb0_clk48 *usb0 = to_da8xx_usb0_clk48(hw);
 unsigned int val;

 val = CFGCHIP2_PHYPWRDN;
 regmap_write_bits(usb0->regmap, CFGCHIP(2), val, val);
}
