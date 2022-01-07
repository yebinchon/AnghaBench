
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;
struct firmware {int size; scalar_t__ data; } ;


 int ATH3K_DNLOAD ;
 int BT_ERR (char*) ;
 int BULK_SIZE ;
 int ENOMEM ;
 int FW_HDR_SIZE ;
 int GFP_KERNEL ;
 int TIMEGAP_USEC_MAX ;
 int TIMEGAP_USEC_MIN ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_TYPE_VENDOR ;
 int ath3k_log_failed_loading (int,int,int,int) ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;
 int memcpy (int *,scalar_t__,int) ;
 int min_t (int ,int,int ) ;
 int uint ;
 int usb_bulk_msg (struct usb_device*,int,int *,int,int*,int) ;
 int usb_control_msg (struct usb_device*,int,int ,int ,int ,int ,int *,int,int ) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int ath3k_load_fwfile(struct usb_device *udev,
  const struct firmware *firmware)
{
 u8 *send_buf;
 int len = 0;
 int err, pipe, size, count, sent = 0;
 int ret;

 count = firmware->size;

 send_buf = kmalloc(BULK_SIZE, GFP_KERNEL);
 if (!send_buf) {
  BT_ERR("Can't allocate memory chunk for firmware");
  return -ENOMEM;
 }

 size = min_t(uint, count, FW_HDR_SIZE);
 memcpy(send_buf, firmware->data, size);

 pipe = usb_sndctrlpipe(udev, 0);
 ret = usb_control_msg(udev, pipe, ATH3K_DNLOAD,
   USB_TYPE_VENDOR, 0, 0, send_buf,
   size, USB_CTRL_SET_TIMEOUT);
 if (ret < 0) {
  BT_ERR("Can't change to loading configuration err");
  kfree(send_buf);
  return ret;
 }

 sent += size;
 count -= size;

 pipe = usb_sndbulkpipe(udev, 0x02);

 while (count) {

  usleep_range(TIMEGAP_USEC_MIN, TIMEGAP_USEC_MAX);

  size = min_t(uint, count, BULK_SIZE);
  memcpy(send_buf, firmware->data + sent, size);

  err = usb_bulk_msg(udev, pipe, send_buf, size,
     &len, 3000);
  if (err || (len != size)) {
   ath3k_log_failed_loading(err, len, size, count);
   kfree(send_buf);
   return err;
  }
  sent += size;
  count -= size;
 }

 kfree(send_buf);
 return 0;
}
