
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;


 int SIRFSOC_USBPHY_PLL_BYPASS ;
 scalar_t__ SIRFSOC_USBPHY_PLL_CTRL ;
 int SIRFSOC_USBPHY_PLL_LOCK ;
 int SIRFSOC_USBPHY_PLL_POWERDOWN ;
 int cpu_relax () ;
 int readl (scalar_t__) ;
 scalar_t__ sirfsoc_rsc_vbase ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int usb_pll_clk_enable(struct clk_hw *hw)
{
 u32 reg = readl(sirfsoc_rsc_vbase + SIRFSOC_USBPHY_PLL_CTRL);
 reg &= ~(SIRFSOC_USBPHY_PLL_POWERDOWN | SIRFSOC_USBPHY_PLL_BYPASS);
 writel(reg, sirfsoc_rsc_vbase + SIRFSOC_USBPHY_PLL_CTRL);
 while (!(readl(sirfsoc_rsc_vbase + SIRFSOC_USBPHY_PLL_CTRL) &
   SIRFSOC_USBPHY_PLL_LOCK))
  cpu_relax();

 return 0;
}
