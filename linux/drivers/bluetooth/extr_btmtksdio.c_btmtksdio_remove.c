
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;
struct hci_dev {int dummy; } ;
struct btmtksdio_dev {struct hci_dev* hdev; int dev; } ;


 int hci_free_dev (struct hci_dev*) ;
 int hci_unregister_dev (struct hci_dev*) ;
 int pm_runtime_get_noresume (int ) ;
 struct btmtksdio_dev* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_set_drvdata (struct sdio_func*,int *) ;

__attribute__((used)) static void btmtksdio_remove(struct sdio_func *func)
{
 struct btmtksdio_dev *bdev = sdio_get_drvdata(func);
 struct hci_dev *hdev;

 if (!bdev)
  return;


 pm_runtime_get_noresume(bdev->dev);

 hdev = bdev->hdev;

 sdio_set_drvdata(func, ((void*)0));
 hci_unregister_dev(hdev);
 hci_free_dev(hdev);
}
