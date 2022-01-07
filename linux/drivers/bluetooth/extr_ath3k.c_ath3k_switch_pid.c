
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int USB_CTRL_SET_TIMEOUT ;
 int USB_REG_SWITCH_VID_PID ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int,int ,int ,int ,int ,int *,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int ath3k_switch_pid(struct usb_device *udev)
{
 int pipe = 0;

 pipe = usb_sndctrlpipe(udev, 0);
 return usb_control_msg(udev, pipe, USB_REG_SWITCH_VID_PID,
   USB_TYPE_VENDOR, 0, 0,
   ((void*)0), 0, USB_CTRL_SET_TIMEOUT);
}
