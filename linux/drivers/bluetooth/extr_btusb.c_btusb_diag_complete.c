
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int status; int actual_length; int transfer_buffer; struct hci_dev* context; } ;
struct sk_buff {int dummy; } ;
struct hci_dev {int name; } ;
struct btusb_data {int udev; int diag_anchor; int flags; } ;


 int BTUSB_DIAG_RUNNING ;
 int BT_DBG (char*,int ,struct urb*,int ,int ) ;
 int ENODEV ;
 int ENOENT ;
 int EPERM ;
 int GFP_ATOMIC ;
 int bt_dev_err (struct hci_dev*,char*,struct urb*,int) ;
 struct sk_buff* bt_skb_alloc (int ,int ) ;
 struct btusb_data* hci_get_drvdata (struct hci_dev*) ;
 int hci_recv_diag (struct hci_dev*,struct sk_buff*) ;
 int skb_put_data (struct sk_buff*,int ,int ) ;
 int test_bit (int ,int *) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_mark_last_busy (int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static void btusb_diag_complete(struct urb *urb)
{
 struct hci_dev *hdev = urb->context;
 struct btusb_data *data = hci_get_drvdata(hdev);
 int err;

 BT_DBG("%s urb %p status %d count %d", hdev->name, urb, urb->status,
        urb->actual_length);

 if (urb->status == 0) {
  struct sk_buff *skb;

  skb = bt_skb_alloc(urb->actual_length, GFP_ATOMIC);
  if (skb) {
   skb_put_data(skb, urb->transfer_buffer,
         urb->actual_length);
   hci_recv_diag(hdev, skb);
  }
 } else if (urb->status == -ENOENT) {

  return;
 }

 if (!test_bit(BTUSB_DIAG_RUNNING, &data->flags))
  return;

 usb_anchor_urb(urb, &data->diag_anchor);
 usb_mark_last_busy(data->udev);

 err = usb_submit_urb(urb, GFP_ATOMIC);
 if (err < 0) {



  if (err != -EPERM && err != -ENODEV)
   bt_dev_err(hdev, "urb %p failed to resubmit (%d)",
       urb, -err);
  usb_unanchor_urb(urb);
 }
}
