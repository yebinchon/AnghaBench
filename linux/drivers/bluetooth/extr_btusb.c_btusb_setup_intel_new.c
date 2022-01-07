
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_version {int hw_platform; int hw_variant; int fw_variant; } ;
struct intel_boot_params {int limited_cce; int otp_bdaddr; } ;
struct hci_dev {int dev; int quirks; int name; } ;
struct firmware {int size; } ;
struct btusb_data {int flags; } ;
typedef int ktime_t ;
typedef int fwname ;


 int BDADDR_ANY ;
 int BTUSB_BOOTING ;
 int BTUSB_BOOTLOADER ;
 int BTUSB_DOWNLOADING ;
 int BTUSB_FIRMWARE_FAILED ;
 int BTUSB_FIRMWARE_LOADED ;
 int BT_DBG (char*,int ) ;
 int EBADF ;
 int EINTR ;
 int EINVAL ;
 int ENODEV ;
 int ENOEXEC ;
 int ETIMEDOUT ;
 int HCI_QUIRK_INVALID_BDADDR ;
 int TASK_INTERRUPTIBLE ;
 int bacmp (int *,int ) ;
 int bt_dev_err (struct hci_dev*,char*,...) ;
 int bt_dev_info (struct hci_dev*,char*,...) ;
 int btintel_check_bdaddr (struct hci_dev*) ;
 int btintel_download_firmware (struct hci_dev*,struct firmware const*,int*) ;
 int btintel_load_ddc_config (struct hci_dev*,char*) ;
 int btintel_read_boot_params (struct hci_dev*,struct intel_boot_params*) ;
 int btintel_read_version (struct hci_dev*,struct intel_version*) ;
 int btintel_send_intel_reset (struct hci_dev*,int) ;
 int btintel_set_event_mask (struct hci_dev*,int) ;
 int btintel_version_info (struct hci_dev*,struct intel_version*) ;
 int btusb_setup_intel_new_get_fw_name (struct intel_version*,struct intel_boot_params*,char*,int,char*) ;
 int clear_bit (int ,int *) ;
 struct btusb_data* hci_get_drvdata (struct hci_dev*) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 int msecs_to_jiffies (int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_on_bit_timeout (int *,int ,int ,int ) ;

__attribute__((used)) static int btusb_setup_intel_new(struct hci_dev *hdev)
{
 struct btusb_data *data = hci_get_drvdata(hdev);
 struct intel_version ver;
 struct intel_boot_params params;
 const struct firmware *fw;
 u32 boot_param;
 char fwname[64];
 ktime_t calltime, delta, rettime;
 unsigned long long duration;
 int err;

 BT_DBG("%s", hdev->name);





 boot_param = 0x00000000;

 calltime = ktime_get();





 err = btintel_read_version(hdev, &ver);
 if (err)
  return err;




 if (ver.hw_platform != 0x37) {
  bt_dev_err(hdev, "Unsupported Intel hardware platform (%u)",
      ver.hw_platform);
  return -EINVAL;
 }







 switch (ver.hw_variant) {
 case 0x0b:
 case 0x0c:
 case 0x11:
 case 0x12:
 case 0x13:
 case 0x14:
  break;
 default:
  bt_dev_err(hdev, "Unsupported Intel hardware variant (%u)",
      ver.hw_variant);
  return -EINVAL;
 }

 btintel_version_info(hdev, &ver);
 if (ver.fw_variant == 0x23) {
  clear_bit(BTUSB_BOOTLOADER, &data->flags);
  btintel_check_bdaddr(hdev);
  return 0;
 }




 if (ver.fw_variant != 0x06) {
  bt_dev_err(hdev, "Unsupported Intel firmware variant (%u)",
      ver.fw_variant);
  return -ENODEV;
 }




 err = btintel_read_boot_params(hdev, &params);
 if (err)
  return err;





 if (params.limited_cce != 0x00) {
  bt_dev_err(hdev, "Unsupported Intel firmware loading method (%u)",
      params.limited_cce);
  return -EINVAL;
 }




 if (!bacmp(&params.otp_bdaddr, BDADDR_ANY)) {
  bt_dev_info(hdev, "No device address configured");
  set_bit(HCI_QUIRK_INVALID_BDADDR, &hdev->quirks);
 }
 err = btusb_setup_intel_new_get_fw_name(&ver, &params, fwname,
      sizeof(fwname), "sfi");
 if (!err) {
  bt_dev_err(hdev, "Unsupported Intel firmware naming");
  return -EINVAL;
 }

 err = request_firmware(&fw, fwname, &hdev->dev);
 if (err < 0) {
  bt_dev_err(hdev, "Failed to load Intel firmware file (%d)", err);
  return err;
 }

 bt_dev_info(hdev, "Found device firmware: %s", fwname);




 err = btusb_setup_intel_new_get_fw_name(&ver, &params, fwname,
      sizeof(fwname), "ddc");
 if (!err) {
  bt_dev_err(hdev, "Unsupported Intel firmware naming");
  return -EINVAL;
 }

 if (fw->size < 644) {
  bt_dev_err(hdev, "Invalid size of firmware file (%zu)",
      fw->size);
  err = -EBADF;
  goto done;
 }

 set_bit(BTUSB_DOWNLOADING, &data->flags);


 err = btintel_download_firmware(hdev, fw, &boot_param);
 if (err < 0)
  goto done;

 set_bit(BTUSB_FIRMWARE_LOADED, &data->flags);

 bt_dev_info(hdev, "Waiting for firmware download to complete");
 err = wait_on_bit_timeout(&data->flags, BTUSB_DOWNLOADING,
      TASK_INTERRUPTIBLE,
      msecs_to_jiffies(5000));
 if (err == -EINTR) {
  bt_dev_err(hdev, "Firmware loading interrupted");
  goto done;
 }

 if (err) {
  bt_dev_err(hdev, "Firmware loading timeout");
  err = -ETIMEDOUT;
  goto done;
 }

 if (test_bit(BTUSB_FIRMWARE_FAILED, &data->flags)) {
  bt_dev_err(hdev, "Firmware loading failed");
  err = -ENOEXEC;
  goto done;
 }

 rettime = ktime_get();
 delta = ktime_sub(rettime, calltime);
 duration = (unsigned long long) ktime_to_ns(delta) >> 10;

 bt_dev_info(hdev, "Firmware loaded in %llu usecs", duration);

done:
 release_firmware(fw);

 if (err < 0)
  return err;

 calltime = ktime_get();

 set_bit(BTUSB_BOOTING, &data->flags);

 err = btintel_send_intel_reset(hdev, boot_param);
 if (err)
  return err;
 bt_dev_info(hdev, "Waiting for device to boot");

 err = wait_on_bit_timeout(&data->flags, BTUSB_BOOTING,
      TASK_INTERRUPTIBLE,
      msecs_to_jiffies(1000));

 if (err == -EINTR) {
  bt_dev_err(hdev, "Device boot interrupted");
  return -EINTR;
 }

 if (err) {
  bt_dev_err(hdev, "Device boot timeout");
  return -ETIMEDOUT;
 }

 rettime = ktime_get();
 delta = ktime_sub(rettime, calltime);
 duration = (unsigned long long) ktime_to_ns(delta) >> 10;

 bt_dev_info(hdev, "Device booted in %llu usecs", duration);

 clear_bit(BTUSB_BOOTLOADER, &data->flags);







 btintel_load_ddc_config(hdev, fwname);
 btintel_set_event_mask(hdev, 0);

 return 0;
}
