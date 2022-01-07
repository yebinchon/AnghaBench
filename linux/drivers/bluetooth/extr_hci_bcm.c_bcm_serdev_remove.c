
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dummy; } ;
struct bcm_device {int serdev_hu; } ;


 int hci_uart_unregister_device (int *) ;
 struct bcm_device* serdev_device_get_drvdata (struct serdev_device*) ;

__attribute__((used)) static void bcm_serdev_remove(struct serdev_device *serdev)
{
 struct bcm_device *bcmdev = serdev_device_get_drvdata(serdev);

 hci_uart_unregister_device(&bcmdev->serdev_hu);
}
