
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;


 int dtl1_hci_flush (struct hci_dev*) ;

__attribute__((used)) static int dtl1_hci_close(struct hci_dev *hdev)
{
 dtl1_hci_flush(hdev);

 return 0;
}
