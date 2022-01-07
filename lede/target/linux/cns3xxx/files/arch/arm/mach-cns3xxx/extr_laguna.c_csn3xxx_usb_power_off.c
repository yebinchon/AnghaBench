
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int PM_CLK_GATE_REG_OFFSET_USB_HOST ;
 scalar_t__ atomic_dec_return (int *) ;
 int cns3xxx_pwr_clk_dis (int) ;
 int usb_pwr_ref ;

__attribute__((used)) static void csn3xxx_usb_power_off(struct platform_device *pdev)
{






 if (atomic_dec_return(&usb_pwr_ref) == 0)
  cns3xxx_pwr_clk_dis(1 << PM_CLK_GATE_REG_OFFSET_USB_HOST);
}
