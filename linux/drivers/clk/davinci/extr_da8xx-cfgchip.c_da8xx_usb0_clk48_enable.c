
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da8xx_usb0_clk48 {int fck; int regmap; } ;
struct clk_hw {int dummy; } ;


 int CFGCHIP (int) ;
 unsigned int CFGCHIP2_PHYCLKGD ;
 unsigned int CFGCHIP2_PHYPWRDN ;
 unsigned int CFGCHIP2_PHY_PLLON ;
 unsigned int CFGCHIP2_RESET ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int regmap_read_poll_timeout (int ,int ,unsigned int,unsigned int,int ,int) ;
 int regmap_write_bits (int ,int ,unsigned int,unsigned int) ;
 struct da8xx_usb0_clk48* to_da8xx_usb0_clk48 (struct clk_hw*) ;

__attribute__((used)) static int da8xx_usb0_clk48_enable(struct clk_hw *hw)
{
 struct da8xx_usb0_clk48 *usb0 = to_da8xx_usb0_clk48(hw);
 unsigned int mask, val;
 int ret;




 clk_enable(usb0->fck);




 mask = CFGCHIP2_RESET | CFGCHIP2_PHYPWRDN | CFGCHIP2_PHY_PLLON;
 val = CFGCHIP2_PHY_PLLON;

 regmap_write_bits(usb0->regmap, CFGCHIP(2), mask, val);
 ret = regmap_read_poll_timeout(usb0->regmap, CFGCHIP(2), val,
           val & CFGCHIP2_PHYCLKGD, 0, 500000);

 clk_disable(usb0->fck);

 return ret;
}
