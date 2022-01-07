
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct intel_version {int dummy; } ;
struct hci_dev {int dummy; } ;


 int EILSEQ ;
 int HCI_CMD_TIMEOUT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int,int ,int *,int ) ;
 int bt_dev_err (struct hci_dev*,char*,...) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (struct intel_version*,int ,int) ;

int btintel_read_version(struct hci_dev *hdev, struct intel_version *ver)
{
 struct sk_buff *skb;

 skb = __hci_cmd_sync(hdev, 0xfc05, 0, ((void*)0), HCI_CMD_TIMEOUT);
 if (IS_ERR(skb)) {
  bt_dev_err(hdev, "Reading Intel version information failed (%ld)",
      PTR_ERR(skb));
  return PTR_ERR(skb);
 }

 if (skb->len != sizeof(*ver)) {
  bt_dev_err(hdev, "Intel version event size mismatch");
  kfree_skb(skb);
  return -EILSEQ;
 }

 memcpy(ver, skb->data, sizeof(*ver));

 kfree_skb(skb);

 return 0;
}
