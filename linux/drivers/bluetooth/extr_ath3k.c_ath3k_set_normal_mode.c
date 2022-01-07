
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 unsigned char ATH3K_MODE_MASK ;
 unsigned char ATH3K_NORMAL_MODE ;
 int ATH3K_SET_NORMAL_MODE ;
 int BT_DBG (char*) ;
 int BT_ERR (char*) ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_TYPE_VENDOR ;
 int ath3k_get_state (struct usb_device*,unsigned char*) ;
 int usb_control_msg (struct usb_device*,int,int ,int ,int ,int ,int *,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int ath3k_set_normal_mode(struct usb_device *udev)
{
 unsigned char fw_state;
 int pipe = 0, ret;

 ret = ath3k_get_state(udev, &fw_state);
 if (ret < 0) {
  BT_ERR("Can't get state to change to normal mode err");
  return ret;
 }

 if ((fw_state & ATH3K_MODE_MASK) == ATH3K_NORMAL_MODE) {
  BT_DBG("firmware was already in normal mode");
  return 0;
 }

 pipe = usb_sndctrlpipe(udev, 0);
 return usb_control_msg(udev, pipe, ATH3K_SET_NORMAL_MODE,
   USB_TYPE_VENDOR, 0, 0,
   ((void*)0), 0, USB_CTRL_SET_TIMEOUT);
}
