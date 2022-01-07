
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct bfusb_data {TYPE_1__* udev; int bulk_out_ep; } ;
struct TYPE_6__ {scalar_t__* toggle; } ;


 int BFUSB_BLOCK_TIMEOUT ;
 scalar_t__ BFUSB_MAX_BLOCK_SIZE ;
 int BT_DBG (char*,struct bfusb_data*,TYPE_1__*) ;
 int BT_ERR (char*) ;
 int BT_INFO (char*) ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_REQ_SET_CONFIGURATION ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (scalar_t__,int ) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;
 int min_t (int ,int,scalar_t__) ;
 int uint ;
 int usb_bulk_msg (TYPE_1__*,int,unsigned char*,int,int*,int ) ;
 int usb_control_msg (TYPE_1__*,int,int ,int ,int,int ,int *,int ,int ) ;
 int usb_sndbulkpipe (TYPE_1__*,int ) ;
 int usb_sndctrlpipe (TYPE_1__*,int ) ;

__attribute__((used)) static int bfusb_load_firmware(struct bfusb_data *data,
          const unsigned char *firmware, int count)
{
 unsigned char *buf;
 int err, pipe, len, size, sent = 0;

 BT_DBG("bfusb %p udev %p", data, data->udev);

 BT_INFO("BlueFRITZ! USB loading firmware");

 buf = kmalloc(BFUSB_MAX_BLOCK_SIZE + 3, GFP_KERNEL);
 if (!buf) {
  BT_ERR("Can't allocate memory chunk for firmware");
  return -ENOMEM;
 }

 pipe = usb_sndctrlpipe(data->udev, 0);

 if (usb_control_msg(data->udev, pipe, USB_REQ_SET_CONFIGURATION,
    0, 1, 0, ((void*)0), 0, USB_CTRL_SET_TIMEOUT) < 0) {
  BT_ERR("Can't change to loading configuration");
  kfree(buf);
  return -EBUSY;
 }

 data->udev->toggle[0] = data->udev->toggle[1] = 0;

 pipe = usb_sndbulkpipe(data->udev, data->bulk_out_ep);

 while (count) {
  size = min_t(uint, count, BFUSB_MAX_BLOCK_SIZE + 3);

  memcpy(buf, firmware + sent, size);

  err = usb_bulk_msg(data->udev, pipe, buf, size,
     &len, BFUSB_BLOCK_TIMEOUT);

  if (err || (len != size)) {
   BT_ERR("Error in firmware loading");
   goto error;
  }

  sent += size;
  count -= size;
 }

 err = usb_bulk_msg(data->udev, pipe, ((void*)0), 0,
     &len, BFUSB_BLOCK_TIMEOUT);
 if (err < 0) {
  BT_ERR("Error in null packet request");
  goto error;
 }

 pipe = usb_sndctrlpipe(data->udev, 0);

 err = usb_control_msg(data->udev, pipe, USB_REQ_SET_CONFIGURATION,
    0, 2, 0, ((void*)0), 0, USB_CTRL_SET_TIMEOUT);
 if (err < 0) {
  BT_ERR("Can't change to running configuration");
  goto error;
 }

 data->udev->toggle[0] = data->udev->toggle[1] = 0;

 BT_INFO("BlueFRITZ! USB device ready");

 kfree(buf);
 return 0;

error:
 kfree(buf);

 pipe = usb_sndctrlpipe(data->udev, 0);

 usb_control_msg(data->udev, pipe, USB_REQ_SET_CONFIGURATION,
    0, 0, 0, ((void*)0), 0, USB_CTRL_SET_TIMEOUT);

 return err;
}
