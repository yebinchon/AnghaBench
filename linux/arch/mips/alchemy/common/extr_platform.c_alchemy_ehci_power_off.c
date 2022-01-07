
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ALCHEMY_USB_EHCI0 ;
 int alchemy_usb_control (int ,int ) ;

__attribute__((used)) static void alchemy_ehci_power_off(struct platform_device *pdev)
{
 alchemy_usb_control(ALCHEMY_USB_EHCI0, 0);
}
