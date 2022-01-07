
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;
struct hci_rp_read_local_version {int lmp_subver; int manufacturer; } ;
struct hci_dev {int quirks; int name; } ;


 int BT_DBG (char*,int ) ;
 int EIO ;
 int HCI_INIT_TIMEOUT ;
 int HCI_OP_READ_LOCAL_VERSION ;
 int HCI_QUIRK_BROKEN_STORED_LINK_KEY ;
 int HCI_QUIRK_RESET_ON_CLOSE ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int ,int ,int *,int ) ;
 int bt_dev_err (struct hci_dev*,char*,...) ;
 int clear_bit (int ,int *) ;
 int kfree_skb (struct sk_buff*) ;
 int le16_to_cpu (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int btusb_setup_csr(struct hci_dev *hdev)
{
 struct hci_rp_read_local_version *rp;
 struct sk_buff *skb;

 BT_DBG("%s", hdev->name);

 skb = __hci_cmd_sync(hdev, HCI_OP_READ_LOCAL_VERSION, 0, ((void*)0),
        HCI_INIT_TIMEOUT);
 if (IS_ERR(skb)) {
  int err = PTR_ERR(skb);
  bt_dev_err(hdev, "CSR: Local version failed (%d)", err);
  return err;
 }

 if (skb->len != sizeof(struct hci_rp_read_local_version)) {
  bt_dev_err(hdev, "CSR: Local version length mismatch");
  kfree_skb(skb);
  return -EIO;
 }

 rp = (struct hci_rp_read_local_version *)skb->data;


 if (le16_to_cpu(rp->manufacturer) != 10 ||
     le16_to_cpu(rp->lmp_subver) == 0x0c5c) {



  clear_bit(HCI_QUIRK_RESET_ON_CLOSE, &hdev->quirks);




  set_bit(HCI_QUIRK_BROKEN_STORED_LINK_KEY, &hdev->quirks);
 }

 kfree_skb(skb);

 return 0;
}
