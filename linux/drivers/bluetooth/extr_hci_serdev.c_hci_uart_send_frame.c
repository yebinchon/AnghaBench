
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct hci_uart {TYPE_1__* proto; } ;
struct hci_dev {int name; } ;
struct TYPE_2__ {int (* enqueue ) (struct hci_uart*,struct sk_buff*) ;} ;


 int BT_DBG (char*,int ,int ,int ) ;
 struct hci_uart* hci_get_drvdata (struct hci_dev*) ;
 int hci_skb_pkt_type (struct sk_buff*) ;
 int hci_uart_tx_wakeup (struct hci_uart*) ;
 int stub1 (struct hci_uart*,struct sk_buff*) ;

__attribute__((used)) static int hci_uart_send_frame(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_uart *hu = hci_get_drvdata(hdev);

 BT_DBG("%s: type %d len %d", hdev->name, hci_skb_pkt_type(skb),
        skb->len);

 hu->proto->enqueue(hu, skb);

 hci_uart_tx_wakeup(hu);

 return 0;
}
