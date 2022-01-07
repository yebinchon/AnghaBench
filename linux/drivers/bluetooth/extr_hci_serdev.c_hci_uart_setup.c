
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct hci_uart {int init_speed; int oper_speed; int hdev_flags; TYPE_1__* proto; int serdev; } ;
struct hci_rp_read_local_version {int dummy; } ;
struct hci_dev {int dummy; } ;
struct TYPE_2__ {int init_speed; int oper_speed; int (* set_baudrate ) (struct hci_uart*,unsigned int) ;int (* setup ) (struct hci_uart*) ;} ;


 int HCI_INIT_TIMEOUT ;
 int HCI_OP_READ_LOCAL_VERSION ;
 int HCI_UART_VND_DETECT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int ,int ,int *,int ) ;
 int bt_dev_err (struct hci_dev*,char*,...) ;
 struct hci_uart* hci_get_drvdata (struct hci_dev*) ;
 int kfree_skb (struct sk_buff*) ;
 int serdev_device_set_baudrate (int ,unsigned int) ;
 int stub1 (struct hci_uart*,unsigned int) ;
 int stub2 (struct hci_uart*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int hci_uart_setup(struct hci_dev *hdev)
{
 struct hci_uart *hu = hci_get_drvdata(hdev);
 struct hci_rp_read_local_version *ver;
 struct sk_buff *skb;
 unsigned int speed;
 int err;


 if (hu->init_speed)
  speed = hu->init_speed;
 else if (hu->proto->init_speed)
  speed = hu->proto->init_speed;
 else
  speed = 0;

 if (speed)
  serdev_device_set_baudrate(hu->serdev, speed);


 if (hu->oper_speed)
  speed = hu->oper_speed;
 else if (hu->proto->oper_speed)
  speed = hu->proto->oper_speed;
 else
  speed = 0;

 if (hu->proto->set_baudrate && speed) {
  err = hu->proto->set_baudrate(hu, speed);
  if (err)
   bt_dev_err(hdev, "Failed to set baudrate");
  else
   serdev_device_set_baudrate(hu->serdev, speed);
 }

 if (hu->proto->setup)
  return hu->proto->setup(hu);

 if (!test_bit(HCI_UART_VND_DETECT, &hu->hdev_flags))
  return 0;

 skb = __hci_cmd_sync(hdev, HCI_OP_READ_LOCAL_VERSION, 0, ((void*)0),
        HCI_INIT_TIMEOUT);
 if (IS_ERR(skb)) {
  bt_dev_err(hdev, "Reading local version info failed (%ld)",
      PTR_ERR(skb));
  return 0;
 }

 if (skb->len != sizeof(*ver))
  bt_dev_err(hdev, "Event length mismatch for version info");

 kfree_skb(skb);
 return 0;
}
