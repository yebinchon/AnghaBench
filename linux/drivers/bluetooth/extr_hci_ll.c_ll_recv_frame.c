
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ll_struct {int hcill_state; } ;
struct hci_uart {struct ll_struct* priv; } ;
struct hci_dev {int dummy; } ;


 int BT_DBG (char*) ;




 int bt_dev_err (struct hci_dev*,char*,int ) ;
 struct hci_uart* hci_get_drvdata (struct hci_dev*) ;
 int hci_skb_pkt_type (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int ll_device_want_to_sleep (struct hci_uart*) ;
 int ll_device_want_to_wakeup (struct hci_uart*) ;
 int ll_device_woke_up (struct hci_uart*) ;

__attribute__((used)) static int ll_recv_frame(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_uart *hu = hci_get_drvdata(hdev);
 struct ll_struct *ll = hu->priv;

 switch (hci_skb_pkt_type(skb)) {
 case 130:
  BT_DBG("HCILL_GO_TO_SLEEP_IND packet");
  ll_device_want_to_sleep(hu);
  break;
 case 131:

  bt_dev_err(hdev, "received HCILL_GO_TO_SLEEP_ACK in state %ld",
      ll->hcill_state);
  break;
 case 128:
  BT_DBG("HCILL_WAKE_UP_IND packet");
  ll_device_want_to_wakeup(hu);
  break;
 case 129:
  BT_DBG("HCILL_WAKE_UP_ACK packet");
  ll_device_woke_up(hu);
  break;
 }

 kfree_skb(skb);
 return 0;
}
