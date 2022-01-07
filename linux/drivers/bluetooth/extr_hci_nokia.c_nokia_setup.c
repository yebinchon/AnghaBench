
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nokia_bt_dev {int initialized; int tx_enabled; scalar_t__ man_id; int wakeup_bt; TYPE_2__* serdev; } ;
struct hci_uart {TYPE_1__* hdev; struct nokia_bt_dev* priv; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device dev; } ;
struct TYPE_4__ {int quirks; int set_bdaddr; } ;


 int HCI_QUIRK_INVALID_BDADDR ;
 int MAX_BAUD_RATE ;
 scalar_t__ NOKIA_ID_BCM2048 ;
 int btbcm_set_bdaddr ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,int) ;
 int gpiod_set_value_cansleep (int ,int ) ;
 int nokia_flow_control (TYPE_2__*,int) ;
 int nokia_reset (struct hci_uart*) ;
 int nokia_send_alive_packet (struct hci_uart*) ;
 int nokia_send_negotiation (struct hci_uart*) ;
 int nokia_setup_fw (struct hci_uart*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;
 int serdev_device_set_baudrate (TYPE_2__*,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int nokia_setup(struct hci_uart *hu)
{
 struct nokia_bt_dev *btdev = hu->priv;
 struct device *dev = &btdev->serdev->dev;
 int err;

 btdev->initialized = 0;

 nokia_flow_control(btdev->serdev, 0);

 pm_runtime_get_sync(dev);

 if (btdev->tx_enabled) {
  gpiod_set_value_cansleep(btdev->wakeup_bt, 0);
  pm_runtime_put(&btdev->serdev->dev);
  btdev->tx_enabled = 0;
 }

 dev_dbg(dev, "protocol setup");


 err = nokia_reset(hu);
 if (err < 0) {
  dev_err(dev, "Reset failed: %d", err);
  goto out;
 }


 err = nokia_send_negotiation(hu);
 if (err < 0) {
  dev_err(dev, "Negotiation failed: %d", err);
  goto out;
 }


 err = nokia_send_alive_packet(hu);
 if (err < 0) {
  dev_err(dev, "Alive check failed: %d", err);
  goto out;
 }


 err = nokia_setup_fw(hu);
 if (err < 0) {
  dev_err(dev, "Could not setup FW: %d", err);
  goto out;
 }

 nokia_flow_control(btdev->serdev, 0);
 serdev_device_set_baudrate(btdev->serdev, MAX_BAUD_RATE);
 nokia_flow_control(btdev->serdev, 1);

 if (btdev->man_id == NOKIA_ID_BCM2048) {
  hu->hdev->set_bdaddr = btbcm_set_bdaddr;
  set_bit(HCI_QUIRK_INVALID_BDADDR, &hu->hdev->quirks);
  dev_dbg(dev, "bcm2048 has invalid bluetooth address!");
 }

 dev_dbg(dev, "protocol setup done!");

 gpiod_set_value_cansleep(btdev->wakeup_bt, 0);
 pm_runtime_put(dev);
 btdev->tx_enabled = 0;
 btdev->initialized = 1;

 return 0;
out:
 pm_runtime_put(dev);

 return err;
}
