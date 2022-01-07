
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int setup_packet; } ;
struct hci_dev {int dummy; } ;
struct btusb_data {int udev; int tx_anchor; } ;


 int ENODEV ;
 int EPERM ;
 int GFP_KERNEL ;
 int bt_dev_err (struct hci_dev*,char*,struct urb*,int) ;
 struct btusb_data* hci_get_drvdata (struct hci_dev*) ;
 int kfree (int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_free_urb (struct urb*) ;
 int usb_mark_last_busy (int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int submit_tx_urb(struct hci_dev *hdev, struct urb *urb)
{
 struct btusb_data *data = hci_get_drvdata(hdev);
 int err;

 usb_anchor_urb(urb, &data->tx_anchor);

 err = usb_submit_urb(urb, GFP_KERNEL);
 if (err < 0) {
  if (err != -EPERM && err != -ENODEV)
   bt_dev_err(hdev, "urb %p submission failed (%d)",
       urb, -err);
  kfree(urb->setup_packet);
  usb_unanchor_urb(urb);
 } else {
  usb_mark_last_busy(data->udev);
 }

 usb_free_urb(urb);
 return err;
}
