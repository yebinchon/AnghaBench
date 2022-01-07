
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dummy; } ;
struct mrvl_serdev {int hu; } ;


 int hci_uart_unregister_device (int *) ;
 struct mrvl_serdev* serdev_device_get_drvdata (struct serdev_device*) ;

__attribute__((used)) static void mrvl_serdev_remove(struct serdev_device *serdev)
{
 struct mrvl_serdev *mrvldev = serdev_device_get_drvdata(serdev);

 hci_uart_unregister_device(&mrvldev->hu);
}
