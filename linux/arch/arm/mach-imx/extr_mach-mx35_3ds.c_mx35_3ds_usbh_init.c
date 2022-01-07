
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int id; } ;


 int MXC_EHCI_INTERFACE_SINGLE_UNI ;
 int MXC_EHCI_INTERNAL_PHY ;
 int mx35_initialize_usb_hw (int ,int) ;

__attribute__((used)) static int mx35_3ds_usbh_init(struct platform_device *pdev)
{
 return mx35_initialize_usb_hw(pdev->id, MXC_EHCI_INTERFACE_SINGLE_UNI |
     MXC_EHCI_INTERNAL_PHY);
}
