
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
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int,int,int*,int ) ;
 int bt_dev_err (struct hci_dev*,char*,int) ;
 int kfree_skb (struct sk_buff*) ;

int btintel_exit_mfg(struct hci_dev *hdev, bool reset, bool patched)
{
 u8 param[] = { 0x00, 0x00 };
 struct sk_buff *skb;






 if (reset)
  param[1] |= patched ? 0x02 : 0x01;

 skb = __hci_cmd_sync(hdev, 0xfc11, 2, param, HCI_CMD_TIMEOUT);
 if (IS_ERR(skb)) {
  bt_dev_err(hdev, "Exiting manufacturer mode failed (%ld)",
      PTR_ERR(skb));
  return PTR_ERR(skb);
 }
 kfree_skb(skb);

 return 0;
}
