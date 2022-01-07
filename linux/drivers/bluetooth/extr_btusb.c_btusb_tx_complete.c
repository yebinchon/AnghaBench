
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int setup_packet; scalar_t__ transfer_buffer_length; int status; int actual_length; struct sk_buff* context; } ;
struct sk_buff {scalar_t__ dev; } ;
struct TYPE_2__ {int err_tx; int byte_tx; } ;
struct hci_dev {TYPE_1__ stat; int flags; int name; } ;
struct btusb_data {int txlock; int tx_in_flight; } ;


 int BT_DBG (char*,int ,struct urb*,int ,int ) ;
 int HCI_RUNNING ;
 struct btusb_data* hci_get_drvdata (struct hci_dev*) ;
 int kfree (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void btusb_tx_complete(struct urb *urb)
{
 struct sk_buff *skb = urb->context;
 struct hci_dev *hdev = (struct hci_dev *)skb->dev;
 struct btusb_data *data = hci_get_drvdata(hdev);
 unsigned long flags;

 BT_DBG("%s urb %p status %d count %d", hdev->name, urb, urb->status,
        urb->actual_length);

 if (!test_bit(HCI_RUNNING, &hdev->flags))
  goto done;

 if (!urb->status)
  hdev->stat.byte_tx += urb->transfer_buffer_length;
 else
  hdev->stat.err_tx++;

done:
 spin_lock_irqsave(&data->txlock, flags);
 data->tx_in_flight--;
 spin_unlock_irqrestore(&data->txlock, flags);

 kfree(urb->setup_packet);

 kfree_skb(skb);
}
