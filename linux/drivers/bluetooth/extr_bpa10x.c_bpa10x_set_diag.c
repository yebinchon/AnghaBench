
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct hci_dev {int flags; int name; } ;
typedef int req ;


 int BT_DBG (char*,int ) ;
 int ENETDOWN ;
 int HCI_INIT_TIMEOUT ;
 int HCI_RUNNING ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int,int,int const*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int bpa10x_set_diag(struct hci_dev *hdev, bool enable)
{
 const u8 req[] = { 0x00, enable };
 struct sk_buff *skb;

 BT_DBG("%s", hdev->name);

 if (!test_bit(HCI_RUNNING, &hdev->flags))
  return -ENETDOWN;


 skb = __hci_cmd_sync(hdev, 0xfc0e, sizeof(req), req, HCI_INIT_TIMEOUT);
 if (IS_ERR(skb))
  return PTR_ERR(skb);

 kfree_skb(skb);
 return 0;
}
