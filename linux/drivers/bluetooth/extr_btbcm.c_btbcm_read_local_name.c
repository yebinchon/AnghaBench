
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct hci_rp_read_local_name {int dummy; } ;
struct hci_dev {int dummy; } ;


 int EIO ;
 struct sk_buff* ERR_PTR (int ) ;
 int HCI_INIT_TIMEOUT ;
 int HCI_OP_READ_LOCAL_NAME ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int ,int ,int *,int ) ;
 int bt_dev_err (struct hci_dev*,char*,...) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *btbcm_read_local_name(struct hci_dev *hdev)
{
 struct sk_buff *skb;

 skb = __hci_cmd_sync(hdev, HCI_OP_READ_LOCAL_NAME, 0, ((void*)0),
        HCI_INIT_TIMEOUT);
 if (IS_ERR(skb)) {
  bt_dev_err(hdev, "BCM: Reading local name failed (%ld)",
      PTR_ERR(skb));
  return skb;
 }

 if (skb->len != sizeof(struct hci_rp_read_local_name)) {
  bt_dev_err(hdev, "BCM: Local name length mismatch");
  kfree_skb(skb);
  return ERR_PTR(-EIO);
 }

 return skb;
}
