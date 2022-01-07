
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int clk; } ;
struct da8xx_usb1_clk48 {TYPE_1__ hw; } ;
struct da8xx_usb0_clk48 {TYPE_1__ hw; } ;
struct clk_hw {int clk; } ;


 scalar_t__ IS_ERR (struct da8xx_usb1_clk48*) ;
 int PTR_ERR (struct da8xx_usb1_clk48*) ;
 struct clk_hw* clk_hw_get_parent_by_index (TYPE_1__*,int) ;
 int clk_hw_register_clkdev (TYPE_1__*,char*,char*) ;
 int clk_set_parent (int ,int ) ;
 struct da8xx_usb1_clk48* da8xx_cfgchip_register_usb0_clk48 (struct device*,struct regmap*) ;
 struct da8xx_usb1_clk48* da8xx_cfgchip_register_usb1_clk48 (struct device*,struct regmap*) ;
 int dev_warn (struct device*,char*) ;

__attribute__((used)) static int da8xx_cfgchip_register_usb_phy_clk(struct device *dev,
           struct regmap *regmap)
{
 struct da8xx_usb0_clk48 *usb0;
 struct da8xx_usb1_clk48 *usb1;
 struct clk_hw *parent;

 usb0 = da8xx_cfgchip_register_usb0_clk48(dev, regmap);
 if (IS_ERR(usb0))
  return PTR_ERR(usb0);





 parent = clk_hw_get_parent_by_index(&usb0->hw, 1);
 if (parent)
  clk_set_parent(usb0->hw.clk, parent->clk);
 else
  dev_warn(dev, "Failed to find usb0 parent clock\n");

 usb1 = da8xx_cfgchip_register_usb1_clk48(dev, regmap);
 if (IS_ERR(usb1))
  return PTR_ERR(usb1);





 parent = clk_hw_get_parent_by_index(&usb1->hw, 0);
 if (parent)
  clk_set_parent(usb1->hw.clk, parent->clk);
 else
  dev_warn(dev, "Failed to find usb1 parent clock\n");

 clk_hw_register_clkdev(&usb0->hw, "usb0_clk48", "da8xx-usb-phy");
 clk_hw_register_clkdev(&usb1->hw, "usb1_clk48", "da8xx-usb-phy");

 return 0;
}
