
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hci_uart {struct hci_dev* hdev; } ;
struct hci_dev {int dummy; } ;
struct bcm_write_uart_clock_setting {unsigned int type; int baud_rate; int zero; } ;
struct bcm_update_uart_baud_rate {unsigned int type; int baud_rate; int zero; } ;
typedef int param ;


 unsigned int BCM_UART_CLOCK_48MHZ ;
 int HCI_INIT_TIMEOUT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int,int,struct bcm_write_uart_clock_setting*,int ) ;
 int bt_dev_dbg (struct hci_dev*,char*,unsigned int) ;
 int bt_dev_err (struct hci_dev*,char*,int) ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (unsigned int) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static int bcm_set_baudrate(struct hci_uart *hu, unsigned int speed)
{
 struct hci_dev *hdev = hu->hdev;
 struct sk_buff *skb;
 struct bcm_update_uart_baud_rate param;

 if (speed > 3000000) {
  struct bcm_write_uart_clock_setting clock;

  clock.type = BCM_UART_CLOCK_48MHZ;

  bt_dev_dbg(hdev, "Set Controller clock (%d)", clock.type);




  skb = __hci_cmd_sync(hdev, 0xfc45, 1, &clock, HCI_INIT_TIMEOUT);
  if (IS_ERR(skb)) {
   int err = PTR_ERR(skb);
   bt_dev_err(hdev, "BCM: failed to write clock (%d)",
       err);
   return err;
  }

  kfree_skb(skb);
 }

 bt_dev_dbg(hdev, "Set Controller UART speed to %d bit/s", speed);

 param.zero = cpu_to_le16(0);
 param.baud_rate = cpu_to_le32(speed);




 skb = __hci_cmd_sync(hdev, 0xfc18, sizeof(param), &param,
        HCI_INIT_TIMEOUT);
 if (IS_ERR(skb)) {
  int err = PTR_ERR(skb);
  bt_dev_err(hdev, "BCM: failed to write update baudrate (%d)",
      err);
  return err;
 }

 kfree_skb(skb);

 return 0;
}
