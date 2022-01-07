
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dev; } ;
struct sdio_device_id {scalar_t__ driver_data; } ;
struct hci_dev {int manufacturer; int quirks; int send; int shutdown; int setup; int flush; int close; int open; int bus; } ;
struct btmtksdio_dev {int * dev; struct hci_dev* hdev; int txq; int tx_work; struct sdio_func* func; void* data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HCI_QUIRK_NON_PERSISTENT_SETUP ;
 int HCI_SDIO ;
 int INIT_WORK (int *,int ) ;
 int SET_HCIDEV_DEV (struct hci_dev*,int *) ;
 int btmtksdio_close ;
 int btmtksdio_flush ;
 int btmtksdio_open ;
 int btmtksdio_send_frame ;
 int btmtksdio_setup ;
 int btmtksdio_shutdown ;
 int btmtksdio_tx_work ;
 int dev_err (int *,char*) ;
 struct btmtksdio_dev* devm_kzalloc (int *,int,int ) ;
 struct hci_dev* hci_alloc_dev () ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_register_dev (struct hci_dev*) ;
 int hci_set_drvdata (struct hci_dev*,struct btmtksdio_dev*) ;
 int pm_runtime_disable (int *) ;
 scalar_t__ pm_runtime_enabled (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int sdio_set_drvdata (struct sdio_func*,struct btmtksdio_dev*) ;
 int set_bit (int ,int *) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static int btmtksdio_probe(struct sdio_func *func,
      const struct sdio_device_id *id)
{
 struct btmtksdio_dev *bdev;
 struct hci_dev *hdev;
 int err;

 bdev = devm_kzalloc(&func->dev, sizeof(*bdev), GFP_KERNEL);
 if (!bdev)
  return -ENOMEM;

 bdev->data = (void *)id->driver_data;
 if (!bdev->data)
  return -ENODEV;

 bdev->dev = &func->dev;
 bdev->func = func;

 INIT_WORK(&bdev->tx_work, btmtksdio_tx_work);
 skb_queue_head_init(&bdev->txq);


 hdev = hci_alloc_dev();
 if (!hdev) {
  dev_err(&func->dev, "Can't allocate HCI device\n");
  return -ENOMEM;
 }

 bdev->hdev = hdev;

 hdev->bus = HCI_SDIO;
 hci_set_drvdata(hdev, bdev);

 hdev->open = btmtksdio_open;
 hdev->close = btmtksdio_close;
 hdev->flush = btmtksdio_flush;
 hdev->setup = btmtksdio_setup;
 hdev->shutdown = btmtksdio_shutdown;
 hdev->send = btmtksdio_send_frame;
 SET_HCIDEV_DEV(hdev, &func->dev);

 hdev->manufacturer = 70;
 set_bit(HCI_QUIRK_NON_PERSISTENT_SETUP, &hdev->quirks);

 err = hci_register_dev(hdev);
 if (err < 0) {
  dev_err(&func->dev, "Can't register HCI device\n");
  hci_free_dev(hdev);
  return err;
 }

 sdio_set_drvdata(func, bdev);






 if (pm_runtime_enabled(bdev->dev))
  pm_runtime_disable(bdev->dev);
 pm_runtime_put_noidle(bdev->dev);

 return 0;
}
