
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;


 int MHZ ;
 int SIRFSOC_USBPHY_PLL_BYPASS ;
 scalar_t__ SIRFSOC_USBPHY_PLL_CTRL ;
 int readl (scalar_t__) ;
 scalar_t__ sirfsoc_rsc_vbase ;

__attribute__((used)) static unsigned long usb_pll_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
{
 u32 reg = readl(sirfsoc_rsc_vbase + SIRFSOC_USBPHY_PLL_CTRL);
 return (reg & SIRFSOC_USBPHY_PLL_BYPASS) ? parent_rate : 48*MHZ;
}
