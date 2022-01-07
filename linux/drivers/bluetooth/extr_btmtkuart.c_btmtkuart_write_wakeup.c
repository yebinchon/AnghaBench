
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dummy; } ;
struct btmtkuart_dev {int dummy; } ;


 int btmtkuart_tx_wakeup (struct btmtkuart_dev*) ;
 struct btmtkuart_dev* serdev_device_get_drvdata (struct serdev_device*) ;

__attribute__((used)) static void btmtkuart_write_wakeup(struct serdev_device *serdev)
{
 struct btmtkuart_dev *bdev = serdev_device_get_drvdata(serdev);

 btmtkuart_tx_wakeup(bdev);
}
