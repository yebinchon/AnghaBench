
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_usb_clk {int dummy; } ;


 scalar_t__ LPC32XX_USB_CLK_CTRL ;
 scalar_t__ usb_clk_vbase ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void lpc32xx_usb_clk_write(struct lpc32xx_usb_clk *clk, u32 val)
{
 writel(val, usb_clk_vbase + LPC32XX_USB_CLK_CTRL);
}
