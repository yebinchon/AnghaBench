
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct da8xx_usb1_clk48 {int regmap; } ;
struct clk_hw {int dummy; } ;


 int CFGCHIP (int) ;
 unsigned int CFGCHIP2_USB1PHYCLKMUX ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct da8xx_usb1_clk48* to_da8xx_usb1_clk48 (struct clk_hw*) ;

__attribute__((used)) static u8 da8xx_usb1_clk48_get_parent(struct clk_hw *hw)
{
 struct da8xx_usb1_clk48 *usb1 = to_da8xx_usb1_clk48(hw);
 unsigned int val;

 regmap_read(usb1->regmap, CFGCHIP(2), &val);

 return (val & CFGCHIP2_USB1PHYCLKMUX) ? 1 : 0;
}
