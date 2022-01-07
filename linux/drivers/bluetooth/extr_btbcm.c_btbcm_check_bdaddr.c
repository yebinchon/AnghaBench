
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;
struct hci_rp_read_bd_addr {int bdaddr; } ;
struct hci_dev {int quirks; } ;


 int BDADDR_BCM20702A0 ;
 int BDADDR_BCM20702A1 ;
 int BDADDR_BCM2076B1 ;
 int BDADDR_BCM4324B3 ;
 int BDADDR_BCM4330B1 ;
 int BDADDR_BCM43341B ;
 int BDADDR_BCM43430A0 ;
 int BDADDR_BCM4345C5 ;
 int EIO ;
 int HCI_INIT_TIMEOUT ;
 int HCI_OP_READ_BD_ADDR ;
 int HCI_QUIRK_INVALID_BDADDR ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int ,int ,int *,int ) ;
 int bacmp (int *,int ) ;
 int bt_dev_err (struct hci_dev*,char*,...) ;
 int bt_dev_info (struct hci_dev*,char*,int *) ;
 int kfree_skb (struct sk_buff*) ;
 int set_bit (int ,int *) ;

int btbcm_check_bdaddr(struct hci_dev *hdev)
{
 struct hci_rp_read_bd_addr *bda;
 struct sk_buff *skb;

 skb = __hci_cmd_sync(hdev, HCI_OP_READ_BD_ADDR, 0, ((void*)0),
        HCI_INIT_TIMEOUT);
 if (IS_ERR(skb)) {
  int err = PTR_ERR(skb);
  bt_dev_err(hdev, "BCM: Reading device address failed (%d)", err);
  return err;
 }

 if (skb->len != sizeof(*bda)) {
  bt_dev_err(hdev, "BCM: Device address length mismatch");
  kfree_skb(skb);
  return -EIO;
 }

 bda = (struct hci_rp_read_bd_addr *)skb->data;
 if (!bacmp(&bda->bdaddr, BDADDR_BCM20702A0) ||
     !bacmp(&bda->bdaddr, BDADDR_BCM20702A1) ||
     !bacmp(&bda->bdaddr, BDADDR_BCM2076B1) ||
     !bacmp(&bda->bdaddr, BDADDR_BCM4324B3) ||
     !bacmp(&bda->bdaddr, BDADDR_BCM4330B1) ||
     !bacmp(&bda->bdaddr, BDADDR_BCM4345C5) ||
     !bacmp(&bda->bdaddr, BDADDR_BCM43430A0) ||
     !bacmp(&bda->bdaddr, BDADDR_BCM43341B)) {
  bt_dev_info(hdev, "BCM: Using default device address (%pMR)",
       &bda->bdaddr);
  set_bit(HCI_QUIRK_INVALID_BDADDR, &hdev->quirks);
 }

 kfree_skb(skb);

 return 0;
}
