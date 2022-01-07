
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int quirks; int dev; } ;
struct firmware {int dummy; } ;
typedef int fw_name ;


 int HCI_QUIRK_STRICT_DUPLICATE_FILTER ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int bt_dev_info (struct hci_dev*,char*,char*) ;
 int btbcm_check_bdaddr (struct hci_dev*) ;
 int btbcm_initialize (struct hci_dev*,char*,int,int) ;
 int btbcm_patchram (struct hci_dev*,struct firmware const*) ;
 struct sk_buff* btbcm_read_local_name (struct hci_dev*) ;
 int kfree_skb (struct sk_buff*) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int *) ;
 int set_bit (int ,int *) ;

int btbcm_setup_patchram(struct hci_dev *hdev)
{
 char fw_name[64];
 const struct firmware *fw;
 struct sk_buff *skb;
 int err;


 err = btbcm_initialize(hdev, fw_name, sizeof(fw_name), 0);
 if (err)
  return err;

 err = request_firmware(&fw, fw_name, &hdev->dev);
 if (err < 0) {
  bt_dev_info(hdev, "BCM: Patch %s not found", fw_name);
  goto done;
 }

 btbcm_patchram(hdev, fw);

 release_firmware(fw);


 err = btbcm_initialize(hdev, fw_name, sizeof(fw_name), 1);
 if (err)
  return err;


 skb = btbcm_read_local_name(hdev);
 if (IS_ERR(skb))
  return PTR_ERR(skb);

 bt_dev_info(hdev, "%s", (char *)(skb->data + 1));
 kfree_skb(skb);

done:
 btbcm_check_bdaddr(hdev);

 set_bit(HCI_QUIRK_STRICT_DUPLICATE_FILTER, &hdev->quirks);

 return 0;
}
