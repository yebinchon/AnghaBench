
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_event_hdr {int evt; } ;
struct hci_dev {int dummy; } ;
struct btmtksdio_dev {int * evt_skb; int tx_state; } ;


 int BTMTKSDIO_TX_WAIT_VND_EVT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HCI_EV_VENDOR ;
 struct btmtksdio_dev* hci_get_drvdata (struct hci_dev*) ;
 int hci_recv_frame (struct hci_dev*,struct sk_buff*) ;
 int kfree_skb (int *) ;
 int * skb_clone (struct sk_buff*,int ) ;
 int smp_mb__after_atomic () ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static int btmtksdio_recv_event(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct btmtksdio_dev *bdev = hci_get_drvdata(hdev);
 struct hci_event_hdr *hdr = (void *)skb->data;
 int err;





 if (hdr->evt == 0xe4)
  hdr->evt = HCI_EV_VENDOR;




 if (test_bit(BTMTKSDIO_TX_WAIT_VND_EVT, &bdev->tx_state)) {
  bdev->evt_skb = skb_clone(skb, GFP_KERNEL);
  if (!bdev->evt_skb) {
   err = -ENOMEM;
   goto err_out;
  }
 }

 err = hci_recv_frame(hdev, skb);
 if (err < 0)
  goto err_free_skb;

 if (hdr->evt == HCI_EV_VENDOR) {
  if (test_and_clear_bit(BTMTKSDIO_TX_WAIT_VND_EVT,
           &bdev->tx_state)) {

   smp_mb__after_atomic();
   wake_up_bit(&bdev->tx_state, BTMTKSDIO_TX_WAIT_VND_EVT);
  }
 }

 return 0;

err_free_skb:
 kfree_skb(bdev->evt_skb);
 bdev->evt_skb = ((void*)0);

err_out:
 return err;
}
