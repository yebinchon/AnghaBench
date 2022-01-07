
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AU1000_OHCICFG ;
 int AU1000_USB_OHCI_PHYS_ADDR ;
 int AU1550_OHCICFG ;
 int AU1550_USB_OHCI_PHYS_ADDR ;
 int alchemy_get_cputype () ;
 int au1000_usb_pm (int ,int ,int) ;
 int au1200_usb_pm (int) ;
 int au1300_usb_pm (int) ;

__attribute__((used)) static void alchemy_usb_pm(int susp)
{
 switch (alchemy_get_cputype()) {
 case 133:
 case 129:
 case 132:
  au1000_usb_pm(AU1000_USB_OHCI_PHYS_ADDR, AU1000_OHCICFG, susp);
  break;
 case 128:
  au1000_usb_pm(AU1550_USB_OHCI_PHYS_ADDR, AU1550_OHCICFG, susp);
  break;
 case 131:
  au1200_usb_pm(susp);
  break;
 case 130:
  au1300_usb_pm(susp);
  break;
 }
}
