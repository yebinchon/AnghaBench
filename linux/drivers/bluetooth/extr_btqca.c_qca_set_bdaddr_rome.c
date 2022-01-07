
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct hci_dev {int dummy; } ;
typedef int cmd ;
typedef int bdaddr_t ;


 int EDL_NVM_ACCESS_OPCODE ;
 int EDL_NVM_ACCESS_SET_REQ_CMD ;
 int HCI_EV_VENDOR ;
 int HCI_INIT_TIMEOUT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync_ev (struct hci_dev*,int ,int,int*,int ,int ) ;
 int bt_dev_err (struct hci_dev*,char*,int) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int*,int const*,int) ;

int qca_set_bdaddr_rome(struct hci_dev *hdev, const bdaddr_t *bdaddr)
{
 struct sk_buff *skb;
 u8 cmd[9];
 int err;

 cmd[0] = EDL_NVM_ACCESS_SET_REQ_CMD;
 cmd[1] = 0x02;
 cmd[2] = sizeof(bdaddr_t);
 memcpy(cmd + 3, bdaddr, sizeof(bdaddr_t));
 skb = __hci_cmd_sync_ev(hdev, EDL_NVM_ACCESS_OPCODE, sizeof(cmd), cmd,
    HCI_EV_VENDOR, HCI_INIT_TIMEOUT);
 if (IS_ERR(skb)) {
  err = PTR_ERR(skb);
  bt_dev_err(hdev, "QCA Change address command failed (%d)", err);
  return err;
 }

 kfree_skb(skb);

 return 0;
}
