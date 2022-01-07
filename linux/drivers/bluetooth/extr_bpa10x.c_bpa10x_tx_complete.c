
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int setup_packet; scalar_t__ transfer_buffer_length; int status; int actual_length; struct sk_buff* context; } ;
struct sk_buff {scalar_t__ dev; } ;
struct TYPE_2__ {int err_tx; int byte_tx; } ;
struct hci_dev {TYPE_1__ stat; int flags; int name; } ;


 int BT_DBG (char*,int ,struct urb*,int ,int ) ;
 int HCI_RUNNING ;
 int kfree (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void bpa10x_tx_complete(struct urb *urb)
{
 struct sk_buff *skb = urb->context;
 struct hci_dev *hdev = (struct hci_dev *) skb->dev;

 BT_DBG("%s urb %p status %d count %d", hdev->name,
     urb, urb->status, urb->actual_length);

 if (!test_bit(HCI_RUNNING, &hdev->flags))
  goto done;

 if (!urb->status)
  hdev->stat.byte_tx += urb->transfer_buffer_length;
 else
  hdev->stat.err_tx++;

done:
 kfree(urb->setup_packet);

 kfree_skb(skb);
}
