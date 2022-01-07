
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct hci_dev {int name; } ;
typedef int buf ;
typedef int bdaddr_t ;


 int BT_CMD_SET_BDADDR ;
 int BT_ERR (char*,int ,long) ;
 int HCI_INIT_TIMEOUT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int MRVL_VENDOR_PKT ;
 long PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int ,int,int*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int*,int const*,int) ;

__attribute__((used)) static int btmrvl_set_bdaddr(struct hci_dev *hdev, const bdaddr_t *bdaddr)
{
 struct sk_buff *skb;
 long ret;
 u8 buf[8];

 buf[0] = MRVL_VENDOR_PKT;
 buf[1] = sizeof(bdaddr_t);
 memcpy(buf + 2, bdaddr, sizeof(bdaddr_t));

 skb = __hci_cmd_sync(hdev, BT_CMD_SET_BDADDR, sizeof(buf), buf,
        HCI_INIT_TIMEOUT);
 if (IS_ERR(skb)) {
  ret = PTR_ERR(skb);
  BT_ERR("%s: changing btmrvl device address failed (%ld)",
         hdev->name, ret);
  return ret;
 }
 kfree_skb(skb);

 return 0;
}
