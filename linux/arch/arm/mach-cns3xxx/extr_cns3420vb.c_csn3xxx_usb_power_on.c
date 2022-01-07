
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int MISC_CHIP_CONFIG_REG ;
 int PM_CLK_GATE_REG_OFFSET_USB_HOST ;
 int PM_PLL_HM_PD_CTRL_REG_OFFSET_PLL_USB ;
 int PM_SOFT_RST_REG_OFFST_USB_HOST ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int atomic_inc_return (int *) ;
 int cns3xxx_pwr_clk_en (int) ;
 int cns3xxx_pwr_power_up (int) ;
 int cns3xxx_pwr_soft_rst (int) ;
 int usb_pwr_ref ;

__attribute__((used)) static int csn3xxx_usb_power_on(struct platform_device *pdev)
{
 if (atomic_inc_return(&usb_pwr_ref) == 1) {
  cns3xxx_pwr_power_up(1 << PM_PLL_HM_PD_CTRL_REG_OFFSET_PLL_USB);
  cns3xxx_pwr_clk_en(1 << PM_CLK_GATE_REG_OFFSET_USB_HOST);
  cns3xxx_pwr_soft_rst(1 << PM_SOFT_RST_REG_OFFST_USB_HOST);
  __raw_writel((__raw_readl(MISC_CHIP_CONFIG_REG) | (0X2 << 24)),
   MISC_CHIP_CONFIG_REG);
 }

 return 0;
}
