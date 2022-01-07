
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {char** data; } ;
struct hci_dev {int quirks; } ;


 int HCI_QUIRK_STRICT_DUPLICATE_FILTER ;
 int IS_ERR (struct sk_buff*) ;
 int bt_dev_info (struct hci_dev*,char*,char*,...) ;
 struct sk_buff* btbcm_read_controller_features (struct hci_dev*) ;
 struct sk_buff* btbcm_read_local_name (struct hci_dev*) ;
 struct sk_buff* btbcm_read_usb_product (struct hci_dev*) ;
 struct sk_buff* btbcm_read_verbose_config (struct hci_dev*) ;
 int btbcm_reset (struct hci_dev*) ;
 int get_unaligned_le16 (char**) ;
 int kfree_skb (struct sk_buff*) ;
 int set_bit (int ,int *) ;

int btbcm_setup_apple(struct hci_dev *hdev)
{
 struct sk_buff *skb;
 int err;


 err = btbcm_reset(hdev);
 if (err)
  return err;


 skb = btbcm_read_verbose_config(hdev);
 if (!IS_ERR(skb)) {
  bt_dev_info(hdev, "BCM: chip id %u build %4.4u",
       skb->data[1], get_unaligned_le16(skb->data + 5));
  kfree_skb(skb);
 }


 skb = btbcm_read_usb_product(hdev);
 if (!IS_ERR(skb)) {
  bt_dev_info(hdev, "BCM: product %4.4x:%4.4x",
       get_unaligned_le16(skb->data + 1),
       get_unaligned_le16(skb->data + 3));
  kfree_skb(skb);
 }


 skb = btbcm_read_controller_features(hdev);
 if (!IS_ERR(skb)) {
  bt_dev_info(hdev, "BCM: features 0x%2.2x", skb->data[1]);
  kfree_skb(skb);
 }


 skb = btbcm_read_local_name(hdev);
 if (!IS_ERR(skb)) {
  bt_dev_info(hdev, "%s", (char *)(skb->data + 1));
  kfree_skb(skb);
 }

 set_bit(HCI_QUIRK_STRICT_DUPLICATE_FILTER, &hdev->quirks);

 return 0;
}
