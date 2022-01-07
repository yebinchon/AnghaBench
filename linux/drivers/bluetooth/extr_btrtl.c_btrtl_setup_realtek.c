
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int quirks; } ;
struct btrtl_device_info {int dummy; } ;


 int HCI_QUIRK_SIMULTANEOUS_DISCOVERY ;
 scalar_t__ IS_ERR (struct btrtl_device_info*) ;
 int PTR_ERR (struct btrtl_device_info*) ;
 int btrtl_download_firmware (struct hci_dev*,struct btrtl_device_info*) ;
 int btrtl_free (struct btrtl_device_info*) ;
 struct btrtl_device_info* btrtl_initialize (struct hci_dev*,int *) ;
 int set_bit (int ,int *) ;

int btrtl_setup_realtek(struct hci_dev *hdev)
{
 struct btrtl_device_info *btrtl_dev;
 int ret;

 btrtl_dev = btrtl_initialize(hdev, ((void*)0));
 if (IS_ERR(btrtl_dev))
  return PTR_ERR(btrtl_dev);

 ret = btrtl_download_firmware(hdev, btrtl_dev);

 btrtl_free(btrtl_dev);




 set_bit(HCI_QUIRK_SIMULTANEOUS_DISCOVERY, &hdev->quirks);

 return ret;
}
