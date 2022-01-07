
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct hci_dev {int name; } ;


 int BT_DBG (char*,int ) ;
 int HCI_INIT_TIMEOUT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int,int,int*,int ) ;
 int bt_dev_err (struct hci_dev*,char*,int ) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static int btusb_setup_bcm92035(struct hci_dev *hdev)
{
 struct sk_buff *skb;
 u8 val = 0x00;

 BT_DBG("%s", hdev->name);

 skb = __hci_cmd_sync(hdev, 0xfc3b, 1, &val, HCI_INIT_TIMEOUT);
 if (IS_ERR(skb))
  bt_dev_err(hdev, "BCM92035 command failed (%ld)", PTR_ERR(skb));
 else
  kfree_skb(skb);

 return 0;
}
