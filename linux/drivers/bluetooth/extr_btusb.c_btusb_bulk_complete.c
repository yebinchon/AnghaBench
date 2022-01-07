
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int status; int actual_length; int transfer_buffer; struct hci_dev* context; } ;
struct TYPE_2__ {int err_rx; int byte_rx; } ;
struct hci_dev {TYPE_1__ stat; int flags; int name; } ;
struct btusb_data {scalar_t__ (* recv_bulk ) (struct btusb_data*,int ,int ) ;int udev; int bulk_anchor; int flags; } ;


 int BTUSB_BULK_RUNNING ;
 int BT_DBG (char*,int ,struct urb*,int ,int ) ;
 int ENODEV ;
 int ENOENT ;
 int EPERM ;
 int GFP_ATOMIC ;
 int HCI_RUNNING ;
 int bt_dev_err (struct hci_dev*,char*,...) ;
 struct btusb_data* hci_get_drvdata (struct hci_dev*) ;
 scalar_t__ stub1 (struct btusb_data*,int ,int ) ;
 int test_bit (int ,int *) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_mark_last_busy (int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static void btusb_bulk_complete(struct urb *urb)
{
 struct hci_dev *hdev = urb->context;
 struct btusb_data *data = hci_get_drvdata(hdev);
 int err;

 BT_DBG("%s urb %p status %d count %d", hdev->name, urb, urb->status,
        urb->actual_length);

 if (!test_bit(HCI_RUNNING, &hdev->flags))
  return;

 if (urb->status == 0) {
  hdev->stat.byte_rx += urb->actual_length;

  if (data->recv_bulk(data, urb->transfer_buffer,
        urb->actual_length) < 0) {
   bt_dev_err(hdev, "corrupted ACL packet");
   hdev->stat.err_rx++;
  }
 } else if (urb->status == -ENOENT) {

  return;
 }

 if (!test_bit(BTUSB_BULK_RUNNING, &data->flags))
  return;

 usb_anchor_urb(urb, &data->bulk_anchor);
 usb_mark_last_busy(data->udev);

 err = usb_submit_urb(urb, GFP_ATOMIC);
 if (err < 0) {



  if (err != -EPERM && err != -ENODEV)
   bt_dev_err(hdev, "urb %p failed to resubmit (%d)",
       urb, -err);
  usb_unanchor_urb(urb);
 }
}
