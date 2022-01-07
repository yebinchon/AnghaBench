
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
struct btrtl_device_info {int fw_len; int fw_data; } ;


 int EINVAL ;
 int RTL_EPATCH_SIGNATURE ;
 int memcmp (int ,int ,int) ;
 int rtl_dev_err (struct hci_dev*,char*) ;
 int rtl_download_firmware (struct hci_dev*,int ,int) ;

__attribute__((used)) static int btrtl_setup_rtl8723a(struct hci_dev *hdev,
    struct btrtl_device_info *btrtl_dev)
{
 if (btrtl_dev->fw_len < 8)
  return -EINVAL;




 if (!memcmp(btrtl_dev->fw_data, RTL_EPATCH_SIGNATURE, 8)) {
  rtl_dev_err(hdev, "unexpected EPATCH signature!");
  return -EINVAL;
 }

 return rtl_download_firmware(hdev, btrtl_dev->fw_data,
         btrtl_dev->fw_len);
}
