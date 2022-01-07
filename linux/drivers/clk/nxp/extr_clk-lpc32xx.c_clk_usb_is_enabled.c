
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_usb_clk {int ctrl_mask; int ctrl_enable; int enable; } ;
struct clk_hw {int dummy; } ;


 int LPC32XX_CLKPWR_USB_CTRL ;
 int clk_regmap ;
 int lpc32xx_usb_clk_read (struct lpc32xx_usb_clk*) ;
 int regmap_read (int ,int ,int*) ;
 struct lpc32xx_usb_clk* to_lpc32xx_usb_clk (struct clk_hw*) ;

__attribute__((used)) static int clk_usb_is_enabled(struct clk_hw *hw)
{
 struct lpc32xx_usb_clk *clk = to_lpc32xx_usb_clk(hw);
 u32 ctrl_val, val;

 if (clk->ctrl_mask) {
  regmap_read(clk_regmap, LPC32XX_CLKPWR_USB_CTRL, &ctrl_val);
  if ((ctrl_val & clk->ctrl_mask) != clk->ctrl_enable)
   return 0;
 }

 val = lpc32xx_usb_clk_read(clk);

 return ((val & clk->enable) == clk->enable);
}
