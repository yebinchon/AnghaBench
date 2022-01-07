
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_usb_clk {int ctrl_disable; scalar_t__ ctrl_mask; int enable; } ;
struct clk_hw {int dummy; } ;


 int LPC32XX_CLKPWR_USB_CTRL ;
 int clk_regmap ;
 int lpc32xx_usb_clk_read (struct lpc32xx_usb_clk*) ;
 int lpc32xx_usb_clk_write (struct lpc32xx_usb_clk*,int ) ;
 int regmap_update_bits (int ,int ,scalar_t__,int ) ;
 struct lpc32xx_usb_clk* to_lpc32xx_usb_clk (struct clk_hw*) ;

__attribute__((used)) static void clk_usb_disable(struct clk_hw *hw)
{
 struct lpc32xx_usb_clk *clk = to_lpc32xx_usb_clk(hw);
 u32 val = lpc32xx_usb_clk_read(clk);

 val &= ~clk->enable;
 lpc32xx_usb_clk_write(clk, val);

 if (clk->ctrl_mask)
  regmap_update_bits(clk_regmap, LPC32XX_CLKPWR_USB_CTRL,
       clk->ctrl_mask, clk->ctrl_disable);
}
