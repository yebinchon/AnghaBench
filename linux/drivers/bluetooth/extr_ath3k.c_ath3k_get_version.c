
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct ath3k_version {int dummy; } ;


 int ATH3K_GETVERSION ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_TYPE_VENDOR ;
 int kfree (struct ath3k_version*) ;
 struct ath3k_version* kmalloc (int const,int ) ;
 int memcpy (struct ath3k_version*,struct ath3k_version*,int const) ;
 int usb_control_msg (struct usb_device*,int,int ,int,int ,int ,struct ath3k_version*,int const,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int ath3k_get_version(struct usb_device *udev,
   struct ath3k_version *version)
{
 int ret, pipe = 0;
 struct ath3k_version *buf;
 const int size = sizeof(*buf);

 buf = kmalloc(size, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 pipe = usb_rcvctrlpipe(udev, 0);
 ret = usb_control_msg(udev, pipe, ATH3K_GETVERSION,
         USB_TYPE_VENDOR | USB_DIR_IN, 0, 0,
         buf, size, USB_CTRL_SET_TIMEOUT);

 memcpy(version, buf, size);
 kfree(buf);

 return ret;
}
