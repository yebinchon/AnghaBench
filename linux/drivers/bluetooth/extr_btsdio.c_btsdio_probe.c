
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdio_func_tuple {struct sdio_func_tuple* next; int size; int code; } ;
struct sdio_func {int vendor; int device; int dev; TYPE_1__* card; int class; struct sdio_func_tuple* tuples; } ;
struct sdio_device_id {scalar_t__ class; } ;
struct hci_dev {int quirks; int send; int flush; int close; int open; int dev_type; int bus; } ;
struct btsdio_data {struct hci_dev* hdev; int txq; int work; struct sdio_func* func; } ;
struct TYPE_2__ {int host; } ;


 int BT_DBG (char*,struct sdio_func*,struct sdio_device_id const*,...) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HCI_AMP ;
 int HCI_PRIMARY ;
 int HCI_QUIRK_RESET_ON_CLOSE ;
 int HCI_SDIO ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ SDIO_CLASS_BT_AMP ;



 int SDIO_VENDOR_ID_BROADCOM ;
 int SET_HCIDEV_DEV (struct hci_dev*,int *) ;
 int btsdio_close ;
 int btsdio_flush ;
 int btsdio_open ;
 int btsdio_send_frame ;
 int btsdio_work ;
 struct btsdio_data* devm_kzalloc (int *,int,int ) ;
 struct hci_dev* hci_alloc_dev () ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_register_dev (struct hci_dev*) ;
 int hci_set_drvdata (struct hci_dev*,struct btsdio_data*) ;
 int mmc_card_is_removable (int ) ;
 int sdio_set_drvdata (struct sdio_func*,struct btsdio_data*) ;
 int set_bit (int ,int *) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static int btsdio_probe(struct sdio_func *func,
    const struct sdio_device_id *id)
{
 struct btsdio_data *data;
 struct hci_dev *hdev;
 struct sdio_func_tuple *tuple = func->tuples;
 int err;

 BT_DBG("func %p id %p class 0x%04x", func, id, func->class);

 while (tuple) {
  BT_DBG("code 0x%x size %d", tuple->code, tuple->size);
  tuple = tuple->next;
 }




 if (func->vendor == SDIO_VENDOR_ID_BROADCOM &&
     !mmc_card_is_removable(func->card->host)) {
  switch (func->device) {
  case 130:
  case 129:
  case 128:
   return -ENODEV;
  }
 }

 data = devm_kzalloc(&func->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->func = func;

 INIT_WORK(&data->work, btsdio_work);

 skb_queue_head_init(&data->txq);

 hdev = hci_alloc_dev();
 if (!hdev)
  return -ENOMEM;

 hdev->bus = HCI_SDIO;
 hci_set_drvdata(hdev, data);

 if (id->class == SDIO_CLASS_BT_AMP)
  hdev->dev_type = HCI_AMP;
 else
  hdev->dev_type = HCI_PRIMARY;

 data->hdev = hdev;

 SET_HCIDEV_DEV(hdev, &func->dev);

 hdev->open = btsdio_open;
 hdev->close = btsdio_close;
 hdev->flush = btsdio_flush;
 hdev->send = btsdio_send_frame;

 if (func->vendor == 0x0104 && func->device == 0x00c5)
  set_bit(HCI_QUIRK_RESET_ON_CLOSE, &hdev->quirks);

 err = hci_register_dev(hdev);
 if (err < 0) {
  hci_free_dev(hdev);
  return err;
 }

 sdio_set_drvdata(func, data);

 return 0;
}
