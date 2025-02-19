
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct hci_dev {int dummy; } ;


 int HCI_INIT_TIMEOUT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int,int,int*,int ) ;
 int bt_dev_err (struct hci_dev*,char*,int) ;
 int kfree_skb (struct sk_buff*) ;

int btintel_set_event_mask(struct hci_dev *hdev, bool debug)
{
 u8 mask[8] = { 0x87, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
 struct sk_buff *skb;
 int err;

 if (debug)
  mask[1] |= 0x62;

 skb = __hci_cmd_sync(hdev, 0xfc52, 8, mask, HCI_INIT_TIMEOUT);
 if (IS_ERR(skb)) {
  err = PTR_ERR(skb);
  bt_dev_err(hdev, "Setting Intel event mask failed (%d)", err);
  return err;
 }
 kfree_skb(skb);

 return 0;
}
