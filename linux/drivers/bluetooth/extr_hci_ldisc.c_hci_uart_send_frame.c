
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct hci_uart {int proto_lock; TYPE_1__* proto; int flags; } ;
struct hci_dev {int name; } ;
struct TYPE_2__ {int (* enqueue ) (struct hci_uart*,struct sk_buff*) ;} ;


 int BT_DBG (char*,int ,int ,int ) ;
 int EUNATCH ;
 int HCI_UART_PROTO_READY ;
 struct hci_uart* hci_get_drvdata (struct hci_dev*) ;
 int hci_skb_pkt_type (struct sk_buff*) ;
 int hci_uart_tx_wakeup (struct hci_uart*) ;
 int percpu_down_read (int *) ;
 int percpu_up_read (int *) ;
 int stub1 (struct hci_uart*,struct sk_buff*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int hci_uart_send_frame(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_uart *hu = hci_get_drvdata(hdev);

 BT_DBG("%s: type %d len %d", hdev->name, hci_skb_pkt_type(skb),
        skb->len);

 percpu_down_read(&hu->proto_lock);

 if (!test_bit(HCI_UART_PROTO_READY, &hu->flags)) {
  percpu_up_read(&hu->proto_lock);
  return -EUNATCH;
 }

 hu->proto->enqueue(hu, skb);
 percpu_up_read(&hu->proto_lock);

 hci_uart_tx_wakeup(hu);

 return 0;
}
