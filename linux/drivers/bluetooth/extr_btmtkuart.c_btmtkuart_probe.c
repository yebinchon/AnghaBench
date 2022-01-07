
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dev; } ;
struct hci_dev {int manufacturer; int quirks; int send; int shutdown; int setup; int flush; int close; int open; int bus; } ;
struct btmtkuart_dev {int vcc; int tx_state; int pins_runtime; int pinctrl; scalar_t__ boot; scalar_t__ reset; int osc; int pins_boot; struct hci_dev* hdev; int txq; int tx_work; struct serdev_device* serdev; int data; } ;


 int BTMTKUART_REQUIRED_WAKEUP ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HCI_QUIRK_NON_PERSISTENT_SETUP ;
 int HCI_UART ;
 int INIT_WORK (int *,int ) ;
 int SET_HCIDEV_DEV (struct hci_dev*,int *) ;
 int btmtkuart_client_ops ;
 int btmtkuart_close ;
 int btmtkuart_flush ;
 scalar_t__ btmtkuart_is_standalone (struct btmtkuart_dev*) ;
 int btmtkuart_open ;
 int btmtkuart_parse_dt (struct serdev_device*) ;
 int btmtkuart_send_frame ;
 int btmtkuart_setup ;
 int btmtkuart_shutdown ;
 int btmtkuart_tx_work ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*) ;
 int devm_gpiod_put (int *,scalar_t__) ;
 struct btmtkuart_dev* devm_kzalloc (int *,int,int ) ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 struct hci_dev* hci_alloc_dev () ;
 int hci_free_dev (struct hci_dev*) ;
 int hci_register_dev (struct hci_dev*) ;
 int hci_set_drvdata (struct hci_dev*,struct btmtkuart_dev*) ;
 int msleep (int) ;
 int of_device_get_match_data (int *) ;
 int pinctrl_select_state (int ,int ) ;
 int pm_runtime_no_callbacks (int *) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int serdev_device_set_client_ops (struct serdev_device*,int *) ;
 int serdev_device_set_drvdata (struct serdev_device*,struct btmtkuart_dev*) ;
 int set_bit (int ,int *) ;
 int skb_queue_head_init (int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int btmtkuart_probe(struct serdev_device *serdev)
{
 struct btmtkuart_dev *bdev;
 struct hci_dev *hdev;
 int err;

 bdev = devm_kzalloc(&serdev->dev, sizeof(*bdev), GFP_KERNEL);
 if (!bdev)
  return -ENOMEM;

 bdev->data = of_device_get_match_data(&serdev->dev);
 if (!bdev->data)
  return -ENODEV;

 bdev->serdev = serdev;
 serdev_device_set_drvdata(serdev, bdev);

 serdev_device_set_client_ops(serdev, &btmtkuart_client_ops);

 err = btmtkuart_parse_dt(serdev);
 if (err < 0)
  return err;

 INIT_WORK(&bdev->tx_work, btmtkuart_tx_work);
 skb_queue_head_init(&bdev->txq);


 hdev = hci_alloc_dev();
 if (!hdev) {
  dev_err(&serdev->dev, "Can't allocate HCI device\n");
  return -ENOMEM;
 }

 bdev->hdev = hdev;

 hdev->bus = HCI_UART;
 hci_set_drvdata(hdev, bdev);

 hdev->open = btmtkuart_open;
 hdev->close = btmtkuart_close;
 hdev->flush = btmtkuart_flush;
 hdev->setup = btmtkuart_setup;
 hdev->shutdown = btmtkuart_shutdown;
 hdev->send = btmtkuart_send_frame;
 SET_HCIDEV_DEV(hdev, &serdev->dev);

 hdev->manufacturer = 70;
 set_bit(HCI_QUIRK_NON_PERSISTENT_SETUP, &hdev->quirks);

 if (btmtkuart_is_standalone(bdev)) {
  err = clk_prepare_enable(bdev->osc);
  if (err < 0)
   return err;

  if (bdev->boot) {
   gpiod_set_value_cansleep(bdev->boot, 1);
  } else {



   pinctrl_select_state(bdev->pinctrl, bdev->pins_boot);
  }


  err = regulator_enable(bdev->vcc);
  if (err < 0) {
   clk_disable_unprepare(bdev->osc);
   return err;
  }




  if (bdev->reset) {
   gpiod_set_value_cansleep(bdev->reset, 1);
   usleep_range(1000, 2000);
   gpiod_set_value_cansleep(bdev->reset, 0);
  }




  msleep(50);

  if (bdev->boot)
   devm_gpiod_put(&serdev->dev, bdev->boot);

  pinctrl_select_state(bdev->pinctrl, bdev->pins_runtime);




  pm_runtime_no_callbacks(&serdev->dev);

  set_bit(BTMTKUART_REQUIRED_WAKEUP, &bdev->tx_state);
 }

 err = hci_register_dev(hdev);
 if (err < 0) {
  dev_err(&serdev->dev, "Can't register HCI device\n");
  hci_free_dev(hdev);
  goto err_regulator_disable;
 }

 return 0;

err_regulator_disable:
 if (btmtkuart_is_standalone(bdev))
  regulator_disable(bdev->vcc);

 return err;
}
