
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ phy_interface_t ;


 int LPC32XX_CLKPWR_MACCLK_CTRL ;
 int LPC32XX_CLKPWR_MACCTRL_PINS_MSK ;
 int LPC32XX_CLKPWR_MACCTRL_USE_MII_PINS ;
 int LPC32XX_CLKPWR_MACCTRL_USE_RMII_PINS ;
 scalar_t__ PHY_INTERFACE_MODE_MII ;
 int __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;

void lpc32xx_set_phy_interface_mode(phy_interface_t mode)
{
 u32 tmp = __raw_readl(LPC32XX_CLKPWR_MACCLK_CTRL);
 tmp &= ~LPC32XX_CLKPWR_MACCTRL_PINS_MSK;
 if (mode == PHY_INTERFACE_MODE_MII)
  tmp |= LPC32XX_CLKPWR_MACCTRL_USE_MII_PINS;
 else
  tmp |= LPC32XX_CLKPWR_MACCTRL_USE_RMII_PINS;
 __raw_writel(tmp, LPC32XX_CLKPWR_MACCLK_CTRL);
}
