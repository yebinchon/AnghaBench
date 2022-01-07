
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dummy; } ;
struct nokia_bt_dev {int hu; } ;


 int hci_uart_unregister_device (int *) ;
 struct nokia_bt_dev* serdev_device_get_drvdata (struct serdev_device*) ;

__attribute__((used)) static void nokia_bluetooth_serdev_remove(struct serdev_device *serdev)
{
 struct nokia_bt_dev *btdev = serdev_device_get_drvdata(serdev);

 hci_uart_unregister_device(&btdev->hu);
}
