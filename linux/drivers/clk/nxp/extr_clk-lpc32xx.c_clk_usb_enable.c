
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_usb_clk {int enable; int busy; scalar_t__ ctrl_mask; int ctrl_enable; } ;
struct clk_hw {int dummy; } ;


 int EBUSY ;
 int ETIMEDOUT ;
 int LPC32XX_CLKPWR_USB_CTRL ;
 int clk_hw_get_name (struct clk_hw*) ;
 int clk_regmap ;
 int lpc32xx_usb_clk_read (struct lpc32xx_usb_clk*) ;
 int lpc32xx_usb_clk_write (struct lpc32xx_usb_clk*,int) ;
 int pr_debug (char*,int ,int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,scalar_t__,int ) ;
 int regmap_write (int ,int ,int) ;
 struct lpc32xx_usb_clk* to_lpc32xx_usb_clk (struct clk_hw*) ;

__attribute__((used)) static int clk_usb_enable(struct clk_hw *hw)
{
 struct lpc32xx_usb_clk *clk = to_lpc32xx_usb_clk(hw);
 u32 val, ctrl_val, count;

 pr_debug("%s: 0x%x\n", clk_hw_get_name(hw), clk->enable);

 if (clk->ctrl_mask) {
  regmap_read(clk_regmap, LPC32XX_CLKPWR_USB_CTRL, &ctrl_val);
  regmap_update_bits(clk_regmap, LPC32XX_CLKPWR_USB_CTRL,
       clk->ctrl_mask, clk->ctrl_enable);
 }

 val = lpc32xx_usb_clk_read(clk);
 if (clk->busy && (val & clk->busy) == clk->busy) {
  if (clk->ctrl_mask)
   regmap_write(clk_regmap, LPC32XX_CLKPWR_USB_CTRL,
         ctrl_val);
  return -EBUSY;
 }

 val |= clk->enable;
 lpc32xx_usb_clk_write(clk, val);

 for (count = 0; count < 1000; count++) {
  val = lpc32xx_usb_clk_read(clk);
  if ((val & clk->enable) == clk->enable)
   break;
 }

 if ((val & clk->enable) == clk->enable)
  return 0;

 if (clk->ctrl_mask)
  regmap_write(clk_regmap, LPC32XX_CLKPWR_USB_CTRL, ctrl_val);

 return -ETIMEDOUT;
}
