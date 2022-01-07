
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da8xx_usb0_clk48 {int regmap; } ;
struct clk_hw {int dummy; } ;


 int CFGCHIP (int) ;
 unsigned int CFGCHIP2_PHYCLKGD ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct da8xx_usb0_clk48* to_da8xx_usb0_clk48 (struct clk_hw*) ;

__attribute__((used)) static int da8xx_usb0_clk48_is_enabled(struct clk_hw *hw)
{
 struct da8xx_usb0_clk48 *usb0 = to_da8xx_usb0_clk48(hw);
 unsigned int val;

 regmap_read(usb0->regmap, CFGCHIP(2), &val);

 return !!(val & CFGCHIP2_PHYCLKGD);
}
