
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hci_dev {int dummy; } ;


 int HCI_INIT_TIMEOUT ;
 int HCI_OP_RESET ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int ,int ,int *,int ) ;
 int bt_dev_err (struct hci_dev*,char*,int) ;
 int kfree_skb (struct sk_buff*) ;
 int msleep (int) ;

__attribute__((used)) static int btbcm_reset(struct hci_dev *hdev)
{
 struct sk_buff *skb;

 skb = __hci_cmd_sync(hdev, HCI_OP_RESET, 0, ((void*)0), HCI_INIT_TIMEOUT);
 if (IS_ERR(skb)) {
  int err = PTR_ERR(skb);
  bt_dev_err(hdev, "BCM: Reset failed (%d)", err);
  return err;
 }
 kfree_skb(skb);


 msleep(100);

 return 0;
}
