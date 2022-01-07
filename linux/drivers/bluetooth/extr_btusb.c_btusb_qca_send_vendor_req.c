
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_TYPE_VENDOR ;
 int dev_err (int *,char*,int) ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;
 int memcpy (void*,int *,int ) ;
 int usb_control_msg (struct usb_device*,int,int ,int,int ,int ,int *,int ,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int btusb_qca_send_vendor_req(struct usb_device *udev, u8 request,
         void *data, u16 size)
{
 int pipe, err;
 u8 *buf;

 buf = kmalloc(size, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;




 pipe = usb_rcvctrlpipe(udev, 0);
 err = usb_control_msg(udev, pipe, request, USB_TYPE_VENDOR | USB_DIR_IN,
         0, 0, buf, size, USB_CTRL_SET_TIMEOUT);
 if (err < 0) {
  dev_err(&udev->dev, "Failed to access otp area (%d)", err);
  goto done;
 }

 memcpy(data, buf, size);

done:
 kfree(buf);

 return err;
}
