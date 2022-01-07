
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct hci_dev {int dummy; } ;
struct btusb_data {int waker; int deferred; int txlock; int tx_in_flight; int flags; } ;


 int BTUSB_SUSPENDING ;
 struct btusb_data* hci_get_drvdata (struct hci_dev*) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int submit_tx_urb (struct hci_dev*,struct urb*) ;
 int test_bit (int ,int *) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static int submit_or_queue_tx_urb(struct hci_dev *hdev, struct urb *urb)
{
 struct btusb_data *data = hci_get_drvdata(hdev);
 unsigned long flags;
 bool suspending;

 spin_lock_irqsave(&data->txlock, flags);
 suspending = test_bit(BTUSB_SUSPENDING, &data->flags);
 if (!suspending)
  data->tx_in_flight++;
 spin_unlock_irqrestore(&data->txlock, flags);

 if (!suspending)
  return submit_tx_urb(hdev, urb);

 usb_anchor_urb(urb, &data->deferred);
 schedule_work(&data->waker);

 usb_free_urb(urb);
 return 0;
}
