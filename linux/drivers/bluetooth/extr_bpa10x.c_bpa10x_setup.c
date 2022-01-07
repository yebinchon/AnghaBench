
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int name; } ;
typedef int req ;


 int BT_DBG (char*,int ) ;
 int HCI_INIT_TIMEOUT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int,int,int const*,int ) ;
 int bt_dev_info (struct hci_dev*,char*,char*) ;
 int hci_set_fw_info (struct hci_dev*,char*,scalar_t__) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static int bpa10x_setup(struct hci_dev *hdev)
{
 static const u8 req[] = { 0x07 };
 struct sk_buff *skb;

 BT_DBG("%s", hdev->name);


 skb = __hci_cmd_sync(hdev, 0xfc0e, sizeof(req), req, HCI_INIT_TIMEOUT);
 if (IS_ERR(skb))
  return PTR_ERR(skb);

 bt_dev_info(hdev, "%s", (char *)(skb->data + 1));

 hci_set_fw_info(hdev, "%s", skb->data + 1);

 kfree_skb(skb);
 return 0;
}
