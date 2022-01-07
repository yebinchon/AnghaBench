
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int id; } ;


 int MXC_EHCI_INTERFACE_DIFF_UNI ;
 int USBH2_PHY_CS_GPIO ;
 int gpio_set_value (int ,int ) ;
 int mdelay (int) ;
 int mx27_initialize_usb_hw (int ,int ) ;

__attribute__((used)) static int usbh2_phy_init(struct platform_device *pdev)
{
 gpio_set_value(USBH2_PHY_CS_GPIO, 0);

 mdelay(10);

 return mx27_initialize_usb_hw(pdev->id, MXC_EHCI_INTERFACE_DIFF_UNI);
}
