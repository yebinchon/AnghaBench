
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct intel_data {int flags; } ;
struct hci_uart {int hdev; struct intel_data* priv; } ;
struct hci_lpm_pkt {int opcode; int dlen; int * data; } ;
struct hci_dev {int dummy; } ;





 int STATE_LPM_TRANSACTION ;
 int STATE_SUSPENDED ;
 int bt_dev_err (struct hci_dev*,char*,...) ;
 int clear_bit (int ,int *) ;
 struct hci_uart* hci_get_drvdata (struct hci_dev*) ;
 int intel_recv_lpm_notify (struct hci_dev*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int set_bit (int ,int *) ;
 int test_and_clear_bit (int ,int *) ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static int intel_recv_lpm(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_lpm_pkt *lpm = (void *)skb->data;
 struct hci_uart *hu = hci_get_drvdata(hdev);
 struct intel_data *intel = hu->priv;

 switch (lpm->opcode) {
 case 128:
  if (lpm->dlen < 1) {
   bt_dev_err(hu->hdev, "Invalid LPM notification packet");
   break;
  }
  intel_recv_lpm_notify(hdev, lpm->data[0]);
  break;
 case 129:
  set_bit(STATE_SUSPENDED, &intel->flags);
  if (test_and_clear_bit(STATE_LPM_TRANSACTION, &intel->flags))
   wake_up_bit(&intel->flags, STATE_LPM_TRANSACTION);
  break;
 case 130:
  clear_bit(STATE_SUSPENDED, &intel->flags);
  if (test_and_clear_bit(STATE_LPM_TRANSACTION, &intel->flags))
   wake_up_bit(&intel->flags, STATE_LPM_TRANSACTION);
  break;
 default:
  bt_dev_err(hdev, "Unknown LPM opcode (%02x)", lpm->opcode);
  break;
 }

 kfree_skb(skb);

 return 0;
}
