
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int ATH3K_GETSTATE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_TYPE_VENDOR ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int usb_control_msg (struct usb_device*,int,int ,int,int ,int ,char*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int ath3k_get_state(struct usb_device *udev, unsigned char *state)
{
 int ret, pipe = 0;
 char *buf;

 buf = kmalloc(sizeof(*buf), GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 pipe = usb_rcvctrlpipe(udev, 0);
 ret = usb_control_msg(udev, pipe, ATH3K_GETSTATE,
         USB_TYPE_VENDOR | USB_DIR_IN, 0, 0,
         buf, sizeof(*buf), USB_CTRL_SET_TIMEOUT);

 *state = *buf;
 kfree(buf);

 return ret;
}
