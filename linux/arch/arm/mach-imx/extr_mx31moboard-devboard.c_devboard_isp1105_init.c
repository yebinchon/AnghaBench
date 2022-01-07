
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy {int dummy; } ;


 int USBH1_MODE ;
 int USBH1_VBUSEN_B ;
 int gpio_direction_output (int ,int) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static int devboard_isp1105_init(struct usb_phy *otg)
{
 int ret = gpio_request(USBH1_MODE, "usbh1-mode");
 if (ret)
  return ret;

 gpio_direction_output(USBH1_MODE, 0);

 ret = gpio_request(USBH1_VBUSEN_B, "usbh1-vbusen");
 if (ret) {
  gpio_free(USBH1_MODE);
  return ret;
 }
 gpio_direction_output(USBH1_VBUSEN_B, 1);

 return 0;
}
