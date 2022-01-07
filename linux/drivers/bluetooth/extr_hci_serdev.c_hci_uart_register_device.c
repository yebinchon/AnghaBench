
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct hci_uart_proto {int (* open ) (struct hci_uart*) ;int (* close ) (struct hci_uart*) ;int manufacturer; scalar_t__ setup; } ;
struct hci_uart {TYPE_1__* serdev; int flags; int hdev_flags; struct hci_uart_proto const* proto; int proto_lock; int write_work; int init_ready; struct hci_dev* hdev; } ;
struct hci_dev {int dev_type; int quirks; int setup; int send; int flush; int close; int open; int manufacturer; int bus; } ;
struct TYPE_4__ {int dev; } ;


 int BT_DBG (char*) ;
 int BT_ERR (char*) ;
 int ENODEV ;
 int ENOMEM ;
 int HCI_AMP ;
 int HCI_PRIMARY ;
 int HCI_QUIRK_EXTERNAL_CONFIG ;
 int HCI_QUIRK_RAW_DEVICE ;
 int HCI_UART ;
 int HCI_UART_CREATE_AMP ;
 int HCI_UART_EXT_CONFIG ;
 int HCI_UART_INIT_PENDING ;
 int HCI_UART_PROTO_READY ;
 int HCI_UART_RAW_DEVICE ;
 int HCI_UART_REGISTERED ;
 int INIT_WORK (int *,int ) ;
 int SET_HCIDEV_DEV (struct hci_dev*,int *) ;
 int clear_bit (int ,int *) ;
 struct hci_dev* hci_alloc_dev () ;
 int hci_free_dev (struct hci_dev*) ;
 scalar_t__ hci_register_dev (struct hci_dev*) ;
 int hci_serdev_client_ops ;
 int hci_set_drvdata (struct hci_dev*,struct hci_uart*) ;
 int hci_uart_close ;
 int hci_uart_flush ;
 int hci_uart_init_work ;
 int hci_uart_open ;
 int hci_uart_send_frame ;
 int hci_uart_setup ;
 int hci_uart_write_work ;
 int percpu_init_rwsem (int *) ;
 int serdev_device_close (TYPE_1__*) ;
 int serdev_device_open (TYPE_1__*) ;
 int serdev_device_set_client_ops (TYPE_1__*,int *) ;
 int set_bit (int ,int *) ;
 int stub1 (struct hci_uart*) ;
 int stub2 (struct hci_uart*) ;
 scalar_t__ test_bit (int ,int *) ;

int hci_uart_register_device(struct hci_uart *hu,
        const struct hci_uart_proto *p)
{
 int err;
 struct hci_dev *hdev;

 BT_DBG("");

 serdev_device_set_client_ops(hu->serdev, &hci_serdev_client_ops);

 err = serdev_device_open(hu->serdev);
 if (err)
  return err;

 err = p->open(hu);
 if (err)
  goto err_open;

 hu->proto = p;
 set_bit(HCI_UART_PROTO_READY, &hu->flags);


 hdev = hci_alloc_dev();
 if (!hdev) {
  BT_ERR("Can't allocate HCI device");
  err = -ENOMEM;
  goto err_alloc;
 }

 hu->hdev = hdev;

 hdev->bus = HCI_UART;
 hci_set_drvdata(hdev, hu);

 INIT_WORK(&hu->init_ready, hci_uart_init_work);
 INIT_WORK(&hu->write_work, hci_uart_write_work);
 percpu_init_rwsem(&hu->proto_lock);





 if (hu->proto->setup)
  hdev->manufacturer = hu->proto->manufacturer;

 hdev->open = hci_uart_open;
 hdev->close = hci_uart_close;
 hdev->flush = hci_uart_flush;
 hdev->send = hci_uart_send_frame;
 hdev->setup = hci_uart_setup;
 SET_HCIDEV_DEV(hdev, &hu->serdev->dev);

 if (test_bit(HCI_UART_RAW_DEVICE, &hu->hdev_flags))
  set_bit(HCI_QUIRK_RAW_DEVICE, &hdev->quirks);

 if (test_bit(HCI_UART_EXT_CONFIG, &hu->hdev_flags))
  set_bit(HCI_QUIRK_EXTERNAL_CONFIG, &hdev->quirks);

 if (test_bit(HCI_UART_CREATE_AMP, &hu->hdev_flags))
  hdev->dev_type = HCI_AMP;
 else
  hdev->dev_type = HCI_PRIMARY;

 if (test_bit(HCI_UART_INIT_PENDING, &hu->hdev_flags))
  return 0;

 if (hci_register_dev(hdev) < 0) {
  BT_ERR("Can't register HCI device");
  err = -ENODEV;
  goto err_register;
 }

 set_bit(HCI_UART_REGISTERED, &hu->flags);

 return 0;

err_register:
 hci_free_dev(hdev);
err_alloc:
 clear_bit(HCI_UART_PROTO_READY, &hu->flags);
 p->close(hu);
err_open:
 serdev_device_close(hu->serdev);
 return err;
}
