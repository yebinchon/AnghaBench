
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dummy; } ;
struct hci_dev {int dummy; } ;
struct btmtkuart_dev {int osc; int vcc; struct hci_dev* hdev; } ;


 scalar_t__ btmtkuart_is_standalone (struct btmtkuart_dev*) ;
 int clk_disable_unprepare (int ) ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_unregister_dev (struct hci_dev*) ;
 int regulator_disable (int ) ;
 struct btmtkuart_dev* serdev_device_get_drvdata (struct serdev_device*) ;

__attribute__((used)) static void btmtkuart_remove(struct serdev_device *serdev)
{
 struct btmtkuart_dev *bdev = serdev_device_get_drvdata(serdev);
 struct hci_dev *hdev = bdev->hdev;

 if (btmtkuart_is_standalone(bdev)) {
  regulator_disable(bdev->vcc);
  clk_disable_unprepare(bdev->osc);
 }

 hci_unregister_dev(hdev);
 hci_free_dev(hdev);
}
