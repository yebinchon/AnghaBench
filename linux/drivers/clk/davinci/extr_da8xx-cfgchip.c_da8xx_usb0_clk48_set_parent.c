
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct da8xx_usb0_clk48 {int regmap; } ;
struct clk_hw {int dummy; } ;


 int CFGCHIP (int) ;
 int CFGCHIP2_USB2PHYCLKMUX ;
 int regmap_write_bits (int ,int ,int ,int ) ;
 struct da8xx_usb0_clk48* to_da8xx_usb0_clk48 (struct clk_hw*) ;

__attribute__((used)) static int da8xx_usb0_clk48_set_parent(struct clk_hw *hw, u8 index)
{
 struct da8xx_usb0_clk48 *usb0 = to_da8xx_usb0_clk48(hw);

 return regmap_write_bits(usb0->regmap, CFGCHIP(2),
     CFGCHIP2_USB2PHYCLKMUX,
     index ? CFGCHIP2_USB2PHYCLKMUX : 0);
}
