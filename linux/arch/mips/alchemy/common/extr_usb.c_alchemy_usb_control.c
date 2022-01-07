
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AU1000_OHCICFG ;
 int AU1000_USB_OHCI_PHYS_ADDR ;
 int AU1550_OHCICFG ;
 int AU1550_USB_OHCI_PHYS_ADDR ;
 int ENODEV ;
 int alchemy_get_cputype () ;
 int alchemy_usb_lock ;
 int au1000_usb_control (int,int,int ,int ) ;
 int au1200_usb_control (int,int) ;
 int au1300_usb_control (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int alchemy_usb_control(int block, int enable)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&alchemy_usb_lock, flags);
 switch (alchemy_get_cputype()) {
 case 133:
 case 129:
 case 132:
  ret = au1000_usb_control(block, enable,
   AU1000_USB_OHCI_PHYS_ADDR, AU1000_OHCICFG);
  break;
 case 128:
  ret = au1000_usb_control(block, enable,
   AU1550_USB_OHCI_PHYS_ADDR, AU1550_OHCICFG);
  break;
 case 131:
  ret = au1200_usb_control(block, enable);
  break;
 case 130:
  ret = au1300_usb_control(block, enable);
  break;
 default:
  ret = -ENODEV;
 }
 spin_unlock_irqrestore(&alchemy_usb_lock, flags);
 return ret;
}
