
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hci_dev {int dummy; } ;


 int HCI_INIT_TIMEOUT ;
 int HCI_OP_RESET ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 long PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int,int ,int *,int ) ;
 int bt_dev_err (struct hci_dev*,char*) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static int btusb_shutdown_intel(struct hci_dev *hdev)
{
 struct sk_buff *skb;
 long ret;
 skb = __hci_cmd_sync(hdev, HCI_OP_RESET, 0, ((void*)0), HCI_INIT_TIMEOUT);
 if (IS_ERR(skb)) {
  ret = PTR_ERR(skb);
  bt_dev_err(hdev, "HCI reset during shutdown failed");
  return ret;
 }
 kfree_skb(skb);





 skb = __hci_cmd_sync(hdev, 0xfc3f, 0, ((void*)0), HCI_INIT_TIMEOUT);
 if (IS_ERR(skb)) {
  ret = PTR_ERR(skb);
  bt_dev_err(hdev, "turning off Intel device LED failed");
  return ret;
 }
 kfree_skb(skb);

 return 0;
}
