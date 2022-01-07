
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;


 int bt3c_hci_flush (struct hci_dev*) ;

__attribute__((used)) static int bt3c_hci_close(struct hci_dev *hdev)
{
 bt3c_hci_flush(hdev);

 return 0;
}
