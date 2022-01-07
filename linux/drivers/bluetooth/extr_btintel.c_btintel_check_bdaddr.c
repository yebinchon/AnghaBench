
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;
struct hci_rp_read_bd_addr {int bdaddr; } ;
struct hci_dev {int quirks; } ;


 int BDADDR_INTEL ;
 int EIO ;
 int HCI_INIT_TIMEOUT ;
 int HCI_OP_READ_BD_ADDR ;
 int HCI_QUIRK_INVALID_BDADDR ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int ,int ,int *,int ) ;
 int bacmp (int *,int ) ;
 int bt_dev_err (struct hci_dev*,char*,...) ;
 int kfree_skb (struct sk_buff*) ;
 int set_bit (int ,int *) ;

int btintel_check_bdaddr(struct hci_dev *hdev)
{
 struct hci_rp_read_bd_addr *bda;
 struct sk_buff *skb;

 skb = __hci_cmd_sync(hdev, HCI_OP_READ_BD_ADDR, 0, ((void*)0),
        HCI_INIT_TIMEOUT);
 if (IS_ERR(skb)) {
  int err = PTR_ERR(skb);
  bt_dev_err(hdev, "Reading Intel device address failed (%d)",
      err);
  return err;
 }

 if (skb->len != sizeof(*bda)) {
  bt_dev_err(hdev, "Intel device address length mismatch");
  kfree_skb(skb);
  return -EIO;
 }

 bda = (struct hci_rp_read_bd_addr *)skb->data;






 if (!bacmp(&bda->bdaddr, BDADDR_INTEL)) {
  bt_dev_err(hdev, "Found Intel default device address (%pMR)",
      &bda->bdaddr);
  set_bit(HCI_QUIRK_INVALID_BDADDR, &hdev->quirks);
 }

 kfree_skb(skb);

 return 0;
}
