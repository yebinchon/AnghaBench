
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_dev {int dummy; } ;
struct btrtl_device_info {TYPE_1__* ic_info; } ;
struct TYPE_2__ {int lmp_subver; } ;
 int btrtl_setup_rtl8723a (struct hci_dev*,struct btrtl_device_info*) ;
 int btrtl_setup_rtl8723b (struct hci_dev*,struct btrtl_device_info*) ;
 int rtl_dev_info (struct hci_dev*,char*) ;

int btrtl_download_firmware(struct hci_dev *hdev,
       struct btrtl_device_info *btrtl_dev)
{






 if (!btrtl_dev->ic_info) {
  rtl_dev_info(hdev, "assuming no firmware upload needed");
  return 0;
 }

 switch (btrtl_dev->ic_info->lmp_subver) {
 case 132:
 case 133:
  return btrtl_setup_rtl8723a(hdev, btrtl_dev);
 case 131:
 case 129:
 case 130:
 case 128:
  return btrtl_setup_rtl8723b(hdev, btrtl_dev);
 default:
  rtl_dev_info(hdev, "assuming no firmware upload needed");
  return 0;
 }
}
