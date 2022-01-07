
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int * flush; } ;


 int BT_DBG (char*,struct hci_dev*) ;
 int hci_uart_flush (struct hci_dev*) ;

__attribute__((used)) static int hci_uart_close(struct hci_dev *hdev)
{
 BT_DBG("hdev %p", hdev);

 hci_uart_flush(hdev);
 hdev->flush = ((void*)0);

 return 0;
}
