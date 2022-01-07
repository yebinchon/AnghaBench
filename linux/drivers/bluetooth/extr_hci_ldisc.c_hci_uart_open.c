
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int flush; int name; } ;


 int BT_DBG (char*,int ,struct hci_dev*) ;
 int hci_uart_flush ;

__attribute__((used)) static int hci_uart_open(struct hci_dev *hdev)
{
 BT_DBG("%s %p", hdev->name, hdev);


 hdev->flush = hci_uart_flush;

 return 0;
}
