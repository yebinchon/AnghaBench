
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct hci_dev {int dummy; } ;


 int HCI_CMD_TIMEOUT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int,int,int const*,int ) ;
 int bt_dev_err (struct hci_dev*,char*,int) ;
 int kfree_skb (struct sk_buff*) ;

int btintel_enter_mfg(struct hci_dev *hdev)
{
 static const u8 param[] = { 0x01, 0x00 };
 struct sk_buff *skb;

 skb = __hci_cmd_sync(hdev, 0xfc11, 2, param, HCI_CMD_TIMEOUT);
 if (IS_ERR(skb)) {
  bt_dev_err(hdev, "Entering manufacturer mode failed (%ld)",
      PTR_ERR(skb));
  return PTR_ERR(skb);
 }
 kfree_skb(skb);

 return 0;
}
