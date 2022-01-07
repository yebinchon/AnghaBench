
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hci_dev {int dummy; } ;
typedef int bdaddr_t ;


 int EDL_WRITE_BD_ADDR_OPCODE ;
 int HCI_EV_VENDOR ;
 int HCI_INIT_TIMEOUT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync_ev (struct hci_dev*,int ,int,int const*,int ,int ) ;
 int bt_dev_err (struct hci_dev*,char*,int) ;
 int kfree_skb (struct sk_buff*) ;

int qca_set_bdaddr(struct hci_dev *hdev, const bdaddr_t *bdaddr)
{
 struct sk_buff *skb;
 int err;

 skb = __hci_cmd_sync_ev(hdev, EDL_WRITE_BD_ADDR_OPCODE, 6, bdaddr,
    HCI_EV_VENDOR, HCI_INIT_TIMEOUT);
 if (IS_ERR(skb)) {
  err = PTR_ERR(skb);
  bt_dev_err(hdev, "QCA Change address cmd failed (%d)", err);
  return err;
 }

 kfree_skb(skb);

 return 0;
}
