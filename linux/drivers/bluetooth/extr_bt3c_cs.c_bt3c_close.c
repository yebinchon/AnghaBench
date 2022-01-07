
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
struct bt3c_info {struct hci_dev* hdev; } ;


 int ENODEV ;
 int bt3c_hci_close (struct hci_dev*) ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_unregister_dev (struct hci_dev*) ;

__attribute__((used)) static int bt3c_close(struct bt3c_info *info)
{
 struct hci_dev *hdev = info->hdev;

 if (!hdev)
  return -ENODEV;

 bt3c_hci_close(hdev);

 hci_unregister_dev(hdev);
 hci_free_dev(hdev);

 return 0;
}
