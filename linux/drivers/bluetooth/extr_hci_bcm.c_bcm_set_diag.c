
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hci_uart {struct bcm_data* priv; } ;
struct hci_dev {int flags; } ;
struct bcm_data {int txq; } ;


 int BCM_LM_DIAG_PKT ;
 int ENETDOWN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HCI_RUNNING ;
 struct sk_buff* bt_skb_alloc (int,int ) ;
 struct hci_uart* hci_get_drvdata (struct hci_dev*) ;
 int hci_uart_tx_wakeup (struct hci_uart*) ;
 int skb_put_u8 (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int bcm_set_diag(struct hci_dev *hdev, bool enable)
{
 struct hci_uart *hu = hci_get_drvdata(hdev);
 struct bcm_data *bcm = hu->priv;
 struct sk_buff *skb;

 if (!test_bit(HCI_RUNNING, &hdev->flags))
  return -ENETDOWN;

 skb = bt_skb_alloc(3, GFP_KERNEL);
 if (!skb)
  return -ENOMEM;

 skb_put_u8(skb, BCM_LM_DIAG_PKT);
 skb_put_u8(skb, 0xf0);
 skb_put_u8(skb, enable);

 skb_queue_tail(&bcm->txq, skb);
 hci_uart_tx_wakeup(hu);

 return 0;
}
