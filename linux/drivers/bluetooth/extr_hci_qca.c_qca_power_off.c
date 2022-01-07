
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {int dummy; } ;
struct hci_dev {int dummy; } ;


 struct hci_uart* hci_get_drvdata (struct hci_dev*) ;
 int qca_power_shutdown (struct hci_uart*) ;
 int qca_send_pre_shutdown_cmd (struct hci_dev*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int qca_power_off(struct hci_dev *hdev)
{
 struct hci_uart *hu = hci_get_drvdata(hdev);


 qca_send_pre_shutdown_cmd(hdev);

 usleep_range(8000, 10000);

 qca_power_shutdown(hu);
 return 0;
}
