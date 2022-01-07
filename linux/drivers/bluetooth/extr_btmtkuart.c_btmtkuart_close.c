
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_dev {int dummy; } ;
struct device {int dummy; } ;
struct btmtkuart_dev {TYPE_1__* serdev; int clk; } ;
struct TYPE_2__ {struct device dev; } ;


 int clk_disable_unprepare (int ) ;
 struct btmtkuart_dev* hci_get_drvdata (struct hci_dev*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int serdev_device_close (TYPE_1__*) ;

__attribute__((used)) static int btmtkuart_close(struct hci_dev *hdev)
{
 struct btmtkuart_dev *bdev = hci_get_drvdata(hdev);
 struct device *dev = &bdev->serdev->dev;


 clk_disable_unprepare(bdev->clk);
 pm_runtime_put_sync(dev);
 pm_runtime_disable(dev);

 serdev_device_close(bdev->serdev);

 return 0;
}
