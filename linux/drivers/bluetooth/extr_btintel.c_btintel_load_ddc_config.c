
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u8 ;
struct sk_buff {int dummy; } ;
struct hci_dev {int dev; } ;
struct firmware {int size; scalar_t__ const* data; } ;


 int HCI_INIT_TIMEOUT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int,scalar_t__ const,scalar_t__ const*,int ) ;
 int bt_dev_err (struct hci_dev*,char*,...) ;
 int bt_dev_info (struct hci_dev*,char*,...) ;
 int kfree_skb (struct sk_buff*) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware_direct (struct firmware const**,char const*,int *) ;

int btintel_load_ddc_config(struct hci_dev *hdev, const char *ddc_name)
{
 const struct firmware *fw;
 struct sk_buff *skb;
 const u8 *fw_ptr;
 int err;

 err = request_firmware_direct(&fw, ddc_name, &hdev->dev);
 if (err < 0) {
  bt_dev_err(hdev, "Failed to load Intel DDC file %s (%d)",
      ddc_name, err);
  return err;
 }

 bt_dev_info(hdev, "Found Intel DDC parameters: %s", ddc_name);

 fw_ptr = fw->data;




 while (fw->size > fw_ptr - fw->data) {
  u8 cmd_plen = fw_ptr[0] + sizeof(u8);

  skb = __hci_cmd_sync(hdev, 0xfc8b, cmd_plen, fw_ptr,
         HCI_INIT_TIMEOUT);
  if (IS_ERR(skb)) {
   bt_dev_err(hdev, "Failed to send Intel_Write_DDC (%ld)",
       PTR_ERR(skb));
   release_firmware(fw);
   return PTR_ERR(skb);
  }

  fw_ptr += cmd_plen;
  kfree_skb(skb);
 }

 release_firmware(fw);

 bt_dev_info(hdev, "Applying Intel DDC parameters completed");

 return 0;
}
