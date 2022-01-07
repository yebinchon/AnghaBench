
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int transfer_flags; } ;
struct hci_dev {int name; } ;
struct btusb_data {int isoc_anchor; TYPE_1__* isoc_rx_ep; int udev; } ;
typedef int gfp_t ;
struct TYPE_2__ {int wMaxPacketSize; int bInterval; int bEndpointAddress; } ;


 int BTUSB_MAX_ISOC_FRAMES ;
 int BT_DBG (char*,int ) ;
 int ENODEV ;
 int ENOMEM ;
 int EPERM ;
 int URB_FREE_BUFFER ;
 int URB_ISO_ASAP ;
 int __fill_isoc_descriptor (struct urb*,int,int) ;
 int bt_dev_err (struct hci_dev*,char*,struct urb*,int) ;
 int btusb_isoc_complete ;
 struct btusb_data* hci_get_drvdata (struct hci_dev*) ;
 unsigned char* kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 struct urb* usb_alloc_urb (int,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_int_urb (struct urb*,int ,unsigned int,unsigned char*,int,int ,struct hci_dev*,int ) ;
 int usb_free_urb (struct urb*) ;
 unsigned int usb_rcvisocpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int btusb_submit_isoc_urb(struct hci_dev *hdev, gfp_t mem_flags)
{
 struct btusb_data *data = hci_get_drvdata(hdev);
 struct urb *urb;
 unsigned char *buf;
 unsigned int pipe;
 int err, size;

 BT_DBG("%s", hdev->name);

 if (!data->isoc_rx_ep)
  return -ENODEV;

 urb = usb_alloc_urb(BTUSB_MAX_ISOC_FRAMES, mem_flags);
 if (!urb)
  return -ENOMEM;

 size = le16_to_cpu(data->isoc_rx_ep->wMaxPacketSize) *
      BTUSB_MAX_ISOC_FRAMES;

 buf = kmalloc(size, mem_flags);
 if (!buf) {
  usb_free_urb(urb);
  return -ENOMEM;
 }

 pipe = usb_rcvisocpipe(data->udev, data->isoc_rx_ep->bEndpointAddress);

 usb_fill_int_urb(urb, data->udev, pipe, buf, size, btusb_isoc_complete,
    hdev, data->isoc_rx_ep->bInterval);

 urb->transfer_flags = URB_FREE_BUFFER | URB_ISO_ASAP;

 __fill_isoc_descriptor(urb, size,
          le16_to_cpu(data->isoc_rx_ep->wMaxPacketSize));

 usb_anchor_urb(urb, &data->isoc_anchor);

 err = usb_submit_urb(urb, mem_flags);
 if (err < 0) {
  if (err != -EPERM && err != -ENODEV)
   bt_dev_err(hdev, "urb %p submission failed (%d)",
       urb, -err);
  usb_unanchor_urb(urb);
 }

 usb_free_urb(urb);

 return err;
}
