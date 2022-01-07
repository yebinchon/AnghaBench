
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_usb_clk {int dummy; } ;


 scalar_t__ LPC32XX_USB_CLK_STS ;
 int readl (scalar_t__) ;
 scalar_t__ usb_clk_vbase ;

__attribute__((used)) static inline u32 lpc32xx_usb_clk_read(struct lpc32xx_usb_clk *clk)
{
 return readl(usb_clk_vbase + LPC32XX_USB_CLK_STS);
}
