
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int transfer_flags; } ;
struct hci_dev {int name; } ;
struct btusb_data {int diag_anchor; int udev; TYPE_1__* diag_rx_ep; } ;
typedef int gfp_t ;
struct TYPE_2__ {int bEndpointAddress; } ;


 int BT_DBG (char*,int ) ;
 int ENODEV ;
 int ENOMEM ;
 int EPERM ;
 int HCI_MAX_FRAME_SIZE ;
 int URB_FREE_BUFFER ;
 int bt_dev_err (struct hci_dev*,char*,struct urb*,int) ;
 int btusb_diag_complete ;
 struct btusb_data* hci_get_drvdata (struct hci_dev*) ;
 unsigned char* kmalloc (int,int ) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,unsigned int,unsigned char*,int,int ,struct hci_dev*) ;
 int usb_free_urb (struct urb*) ;
 int usb_mark_last_busy (int ) ;
 unsigned int usb_rcvbulkpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int btusb_submit_diag_urb(struct hci_dev *hdev, gfp_t mem_flags)
{
 struct btusb_data *data = hci_get_drvdata(hdev);
 struct urb *urb;
 unsigned char *buf;
 unsigned int pipe;
 int err, size = HCI_MAX_FRAME_SIZE;

 BT_DBG("%s", hdev->name);

 if (!data->diag_rx_ep)
  return -ENODEV;

 urb = usb_alloc_urb(0, mem_flags);
 if (!urb)
  return -ENOMEM;

 buf = kmalloc(size, mem_flags);
 if (!buf) {
  usb_free_urb(urb);
  return -ENOMEM;
 }

 pipe = usb_rcvbulkpipe(data->udev, data->diag_rx_ep->bEndpointAddress);

 usb_fill_bulk_urb(urb, data->udev, pipe, buf, size,
     btusb_diag_complete, hdev);

 urb->transfer_flags |= URB_FREE_BUFFER;

 usb_mark_last_busy(data->udev);
 usb_anchor_urb(urb, &data->diag_anchor);

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
