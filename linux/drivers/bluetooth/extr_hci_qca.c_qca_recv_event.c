
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct qca_data {int drop_ev_comp; int flags; } ;
struct hci_uart {struct qca_data* priv; } ;
struct hci_event_hdr {scalar_t__ evt; } ;
struct hci_dev {int dummy; } ;


 scalar_t__ HCI_EV_VENDOR ;
 int QCA_DROP_VENDOR_EVENT ;
 int complete (int *) ;
 struct hci_uart* hci_get_drvdata (struct hci_dev*) ;
 int hci_recv_frame (struct hci_dev*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int qca_recv_event(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_uart *hu = hci_get_drvdata(hdev);
 struct qca_data *qca = hu->priv;

 if (test_bit(QCA_DROP_VENDOR_EVENT, &qca->flags)) {
  struct hci_event_hdr *hdr = (void *)skb->data;
  if (hdr->evt == HCI_EV_VENDOR)
   complete(&qca->drop_ev_comp);

  kfree_skb(skb);

  return 0;
 }

 return hci_recv_frame(hdev, skb);
}
