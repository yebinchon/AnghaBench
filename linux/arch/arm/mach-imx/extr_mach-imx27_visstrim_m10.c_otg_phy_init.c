
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int id; } ;


 int MXC_EHCI_POWER_PINS_ENABLED ;
 int mx27_initialize_usb_hw (int ,int ) ;

__attribute__((used)) static int otg_phy_init(struct platform_device *pdev)
{
 return mx27_initialize_usb_hw(pdev->id, MXC_EHCI_POWER_PINS_ENABLED);
}
