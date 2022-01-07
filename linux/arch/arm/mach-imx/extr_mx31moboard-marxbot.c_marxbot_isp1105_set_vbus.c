
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_otg {int dummy; } ;


 int USBH1_VBUSEN_B ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static int marxbot_isp1105_set_vbus(struct usb_otg *otg, bool on)
{
 if (on)
  gpio_set_value(USBH1_VBUSEN_B, 0);
 else
  gpio_set_value(USBH1_VBUSEN_B, 1);

 return 0;
}
