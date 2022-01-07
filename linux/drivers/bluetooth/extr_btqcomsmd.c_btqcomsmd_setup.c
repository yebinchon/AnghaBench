
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hci_dev {int quirks; } ;


 int HCI_INIT_TIMEOUT ;
 int HCI_OP_RESET ;
 int HCI_QUIRK_USE_BDADDR_PROPERTY ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int ,int ,int *,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int btqcomsmd_setup(struct hci_dev *hdev)
{
 struct sk_buff *skb;

 skb = __hci_cmd_sync(hdev, HCI_OP_RESET, 0, ((void*)0), HCI_INIT_TIMEOUT);
 if (IS_ERR(skb))
  return PTR_ERR(skb);
 kfree_skb(skb);




 set_bit(HCI_QUIRK_USE_BDADDR_PROPERTY, &hdev->quirks);

 return 0;
}
