
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dev; } ;
struct plat_stmmacenet_data {int interface; scalar_t__ bus_id; } ;


 int ENOTSUPP ;
 int GMAC0_SHUT ;
 int GMAC0_USE_PWM01 ;
 int GMAC0_USE_TXCLK ;
 int GMAC1_SHUT ;
 int GMAC1_USE_PWM23 ;
 int GMAC1_USE_TXCLK ;
 int GMAC1_USE_UART0 ;
 int GMAC1_USE_UART1 ;
 int GMAC_SHUT ;
 int LS1X_MUX_CTRL0 ;
 int LS1X_MUX_CTRL1 ;


 int PHY_INTERFACE_MODE_RMII ;
 int PHY_INTF_SELI ;
 int PHY_INTF_SELI_SHIFT ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 struct plat_stmmacenet_data* dev_get_platdata (int *) ;
 int pr_err (char*,int) ;

int ls1x_eth_mux_init(struct platform_device *pdev, void *priv)
{
 struct plat_stmmacenet_data *plat_dat = ((void*)0);
 u32 val;

 val = __raw_readl(LS1X_MUX_CTRL1);
 return 0;
}
