
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hci_uart {int flags; struct hci_dev* hdev; TYPE_2__* proto; int hdev_flags; TYPE_1__* tty; } ;
struct hci_dev {int dev_type; int quirks; int setup; int send; int flush; int close; int open; int manufacturer; int bus; } ;
struct TYPE_4__ {int (* open ) (struct hci_uart*) ;int (* close ) (struct hci_uart*) ;int manufacturer; scalar_t__ setup; } ;
struct TYPE_3__ {int dev; } ;


 int BT_DBG (char*) ;
 int BT_ERR (char*) ;
 int ENODEV ;
 int ENOMEM ;
 int HCI_AMP ;
 int HCI_PRIMARY ;
 int HCI_QUIRK_EXTERNAL_CONFIG ;
 int HCI_QUIRK_RAW_DEVICE ;
 int HCI_QUIRK_RESET_ON_CLOSE ;
 int HCI_UART ;
 int HCI_UART_CREATE_AMP ;
 int HCI_UART_EXT_CONFIG ;
 int HCI_UART_INIT_PENDING ;
 int HCI_UART_RAW_DEVICE ;
 int HCI_UART_REGISTERED ;
 int HCI_UART_RESET_ON_INIT ;
 int SET_HCIDEV_DEV (struct hci_dev*,int ) ;
 struct hci_dev* hci_alloc_dev () ;
 int hci_free_dev (struct hci_dev*) ;
 scalar_t__ hci_register_dev (struct hci_dev*) ;
 int hci_set_drvdata (struct hci_dev*,struct hci_uart*) ;
 int hci_uart_close ;
 int hci_uart_flush ;
 int hci_uart_open ;
 int hci_uart_send_frame ;
 int hci_uart_setup ;
 int set_bit (int ,int *) ;
 int stub1 (struct hci_uart*) ;
 int stub2 (struct hci_uart*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int hci_uart_register_dev(struct hci_uart *hu)
{
 struct hci_dev *hdev;
 int err;

 BT_DBG("");


 hdev = hci_alloc_dev();
 if (!hdev) {
  BT_ERR("Can't allocate HCI device");
  return -ENOMEM;
 }

 hu->hdev = hdev;

 hdev->bus = HCI_UART;
 hci_set_drvdata(hdev, hu);





 if (hu->proto->setup)
  hdev->manufacturer = hu->proto->manufacturer;

 hdev->open = hci_uart_open;
 hdev->close = hci_uart_close;
 hdev->flush = hci_uart_flush;
 hdev->send = hci_uart_send_frame;
 hdev->setup = hci_uart_setup;
 SET_HCIDEV_DEV(hdev, hu->tty->dev);

 if (test_bit(HCI_UART_RAW_DEVICE, &hu->hdev_flags))
  set_bit(HCI_QUIRK_RAW_DEVICE, &hdev->quirks);

 if (test_bit(HCI_UART_EXT_CONFIG, &hu->hdev_flags))
  set_bit(HCI_QUIRK_EXTERNAL_CONFIG, &hdev->quirks);

 if (!test_bit(HCI_UART_RESET_ON_INIT, &hu->hdev_flags))
  set_bit(HCI_QUIRK_RESET_ON_CLOSE, &hdev->quirks);

 if (test_bit(HCI_UART_CREATE_AMP, &hu->hdev_flags))
  hdev->dev_type = HCI_AMP;
 else
  hdev->dev_type = HCI_PRIMARY;




 err = hu->proto->open(hu);
 if (err) {
  hu->hdev = ((void*)0);
  hci_free_dev(hdev);
  return err;
 }

 if (test_bit(HCI_UART_INIT_PENDING, &hu->hdev_flags))
  return 0;

 if (hci_register_dev(hdev) < 0) {
  BT_ERR("Can't register HCI device");
  hu->proto->close(hu);
  hu->hdev = ((void*)0);
  hci_free_dev(hdev);
  return -ENODEV;
 }

 set_bit(HCI_UART_REGISTERED, &hu->flags);

 return 0;
}
