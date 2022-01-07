
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int quirks; } ;
typedef int fw_name ;


 int HCI_QUIRK_STRICT_DUPLICATE_FILTER ;
 int btbcm_check_bdaddr (struct hci_dev*) ;
 int btbcm_initialize (struct hci_dev*,char*,int,int) ;
 int set_bit (int ,int *) ;

int btbcm_finalize(struct hci_dev *hdev)
{
 char fw_name[64];
 int err;


 err = btbcm_initialize(hdev, fw_name, sizeof(fw_name), 1);
 if (err)
  return err;

 btbcm_check_bdaddr(hdev);

 set_bit(HCI_QUIRK_STRICT_DUPLICATE_FILTER, &hdev->quirks);

 return 0;
}
