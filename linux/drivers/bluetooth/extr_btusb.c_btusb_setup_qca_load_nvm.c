
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qca_version {int rom_version; } ;
struct qca_device_info {int nvm_hdr; } ;
struct hci_dev {int dev; } ;
struct firmware {int dummy; } ;
typedef int fwname ;


 int bt_dev_err (struct hci_dev*,char*,char*,int) ;
 int bt_dev_info (struct hci_dev*,char*,char*) ;
 int btusb_setup_qca_download_fw (struct hci_dev*,struct firmware const*,int ) ;
 int le32_to_cpu (int ) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int *) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int btusb_setup_qca_load_nvm(struct hci_dev *hdev,
        struct qca_version *ver,
        const struct qca_device_info *info)
{
 const struct firmware *fw;
 char fwname[64];
 int err;

 snprintf(fwname, sizeof(fwname), "qca/nvm_usb_%08x.bin",
   le32_to_cpu(ver->rom_version));

 err = request_firmware(&fw, fwname, &hdev->dev);
 if (err) {
  bt_dev_err(hdev, "failed to request NVM file: %s (%d)",
      fwname, err);
  return err;
 }

 bt_dev_info(hdev, "using NVM file: %s", fwname);

 err = btusb_setup_qca_download_fw(hdev, fw, info->nvm_hdr);

 release_firmware(fw);

 return err;
}
