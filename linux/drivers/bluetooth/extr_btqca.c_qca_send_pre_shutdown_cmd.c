
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hci_dev {int dummy; } ;


 int HCI_EV_CMD_COMPLETE ;
 int HCI_INIT_TIMEOUT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int QCA_PRE_SHUTDOWN_CMD ;
 struct sk_buff* __hci_cmd_sync_ev (struct hci_dev*,int ,int ,int *,int ,int ) ;
 int bt_dev_dbg (struct hci_dev*,char*) ;
 int bt_dev_err (struct hci_dev*,char*,int) ;
 int kfree_skb (struct sk_buff*) ;

int qca_send_pre_shutdown_cmd(struct hci_dev *hdev)
{
 struct sk_buff *skb;
 int err;

 bt_dev_dbg(hdev, "QCA pre shutdown cmd");

 skb = __hci_cmd_sync_ev(hdev, QCA_PRE_SHUTDOWN_CMD, 0,
    ((void*)0), HCI_EV_CMD_COMPLETE, HCI_INIT_TIMEOUT);

 if (IS_ERR(skb)) {
  err = PTR_ERR(skb);
  bt_dev_err(hdev, "QCA preshutdown_cmd failed (%d)", err);
  return err;
 }

 kfree_skb(skb);

 return 0;
}
