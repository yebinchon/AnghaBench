
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int bd_t ;


 int BIT (int ) ;
 int MAC_BASE ;
 int PHY_INTERFACE_MODE_RGMII ;
 int PINMUX_BANK_MFA ;
 int PINMUX_MACA_MDC ;
 int PINMUX_MACA_MDIO ;
 int SYS_CTRL_CLK_MAC ;
 int SYS_CTRL_GMAC_AUTOSPEED ;
 int SYS_CTRL_GMAC_CKEN_GTX ;
 int SYS_CTRL_GMAC_CTRL ;
 int SYS_CTRL_GMAC_SIMPLE_MUX ;
 int SYS_CTRL_RST_MAC ;
 int designware_initialize (int ,int ) ;
 int enable_clock (int ) ;
 int pinmux_set (int ,int,int ) ;
 int readl (int ) ;
 int reset_block (int ,int) ;
 int udelay (int) ;
 int writel (int ,int ) ;

int board_eth_init(bd_t *bis)
{
 u32 value;


 pinmux_set(PINMUX_BANK_MFA, 3, PINMUX_MACA_MDC);
 pinmux_set(PINMUX_BANK_MFA, 4, PINMUX_MACA_MDIO);


 reset_block(SYS_CTRL_RST_MAC, 1);
 udelay(10);
 reset_block(SYS_CTRL_RST_MAC, 0);


 enable_clock(SYS_CTRL_CLK_MAC);

 value = readl(SYS_CTRL_GMAC_CTRL);

 value |= BIT(SYS_CTRL_GMAC_SIMPLE_MUX);

 value |= BIT(SYS_CTRL_GMAC_CKEN_GTX);

 value |= BIT(SYS_CTRL_GMAC_AUTOSPEED);

 writel(value, SYS_CTRL_GMAC_CTRL);

 return designware_initialize(MAC_BASE, PHY_INTERFACE_MODE_RGMII);
}
