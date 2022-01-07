
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int id; } ;


 int ALCHEMY_USB_OHCI0 ;
 int ALCHEMY_USB_OHCI1 ;
 int alchemy_usb_control (int,int ) ;

__attribute__((used)) static void alchemy_ohci_power_off(struct platform_device *pdev)
{
 int unit;

 unit = (pdev->id == 1) ?
  ALCHEMY_USB_OHCI1 : ALCHEMY_USB_OHCI0;

 alchemy_usb_control(unit, 0);
}
