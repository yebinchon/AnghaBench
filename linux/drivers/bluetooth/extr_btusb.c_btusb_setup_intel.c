
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct sk_buff {int dummy; } ;
struct intel_version {scalar_t__ fw_patch_num; int fw_build_yy; int fw_build_ww; int fw_build_num; int fw_revision; int fw_variant; int hw_revision; int hw_variant; int hw_platform; } ;
struct hci_dev {int name; } ;
struct firmware {int size; int const* data; } ;


 int BT_DBG (char*,int ) ;
 int HCI_INIT_TIMEOUT ;
 int HCI_OP_RESET ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int ,int ,int *,int ) ;
 int bt_dev_err (struct hci_dev*,char*,int) ;
 int bt_dev_info (struct hci_dev*,char*,...) ;
 int btintel_check_bdaddr (struct hci_dev*) ;
 int btintel_enter_mfg (struct hci_dev*) ;
 int btintel_exit_mfg (struct hci_dev*,int,int) ;
 int btintel_read_version (struct hci_dev*,struct intel_version*) ;
 int btintel_set_event_mask_mfg (struct hci_dev*,int) ;
 struct firmware* btusb_setup_intel_get_fw (struct hci_dev*,struct intel_version*) ;
 int btusb_setup_intel_patching (struct hci_dev*,struct firmware const*,int const**,int*) ;
 int kfree_skb (struct sk_buff*) ;
 int release_firmware (struct firmware const*) ;

__attribute__((used)) static int btusb_setup_intel(struct hci_dev *hdev)
{
 struct sk_buff *skb;
 const struct firmware *fw;
 const u8 *fw_ptr;
 int disable_patch, err;
 struct intel_version ver;

 BT_DBG("%s", hdev->name);
 skb = __hci_cmd_sync(hdev, HCI_OP_RESET, 0, ((void*)0), HCI_INIT_TIMEOUT);
 if (IS_ERR(skb)) {
  bt_dev_err(hdev, "sending initial HCI reset command failed (%ld)",
      PTR_ERR(skb));
  return PTR_ERR(skb);
 }
 kfree_skb(skb);







 err = btintel_read_version(hdev, &ver);
 if (err)
  return err;

 bt_dev_info(hdev, "read Intel version: %02x%02x%02x%02x%02x%02x%02x%02x%02x",
      ver.hw_platform, ver.hw_variant, ver.hw_revision,
      ver.fw_variant, ver.fw_revision, ver.fw_build_num,
      ver.fw_build_ww, ver.fw_build_yy, ver.fw_patch_num);





 if (ver.fw_patch_num) {
  bt_dev_info(hdev, "Intel device is already patched. "
       "patch num: %02x", ver.fw_patch_num);
  goto complete;
 }







 fw = btusb_setup_intel_get_fw(hdev, &ver);
 if (!fw)
  goto complete;
 fw_ptr = fw->data;





 err = btintel_enter_mfg(hdev);
 if (err) {
  release_firmware(fw);
  return err;
 }

 disable_patch = 1;
 while (fw->size > fw_ptr - fw->data) {
  int ret;

  ret = btusb_setup_intel_patching(hdev, fw, &fw_ptr,
       &disable_patch);
  if (ret < 0)
   goto exit_mfg_deactivate;
 }

 release_firmware(fw);

 if (disable_patch)
  goto exit_mfg_disable;




 err = btintel_exit_mfg(hdev, 1, 1);
 if (err)
  return err;

 bt_dev_info(hdev, "Intel firmware patch completed and activated");

 goto complete;

exit_mfg_disable:

 err = btintel_exit_mfg(hdev, 0, 0);
 if (err)
  return err;

 bt_dev_info(hdev, "Intel firmware patch completed");

 goto complete;

exit_mfg_deactivate:
 release_firmware(fw);




 err = btintel_exit_mfg(hdev, 1, 0);
 if (err)
  return err;

 bt_dev_info(hdev, "Intel firmware patch completed and deactivated");

complete:



 btintel_set_event_mask_mfg(hdev, 0);

 btintel_check_bdaddr(hdev);
 return 0;
}
