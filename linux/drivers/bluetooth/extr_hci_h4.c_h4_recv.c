
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {int hdev; int flags; struct h4_struct* priv; } ;
struct h4_struct {int * rx_skb; } ;


 int ARRAY_SIZE (int ) ;
 int EUNATCH ;
 int HCI_UART_REGISTERED ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int bt_dev_err (int ,char*,int) ;
 int * h4_recv_buf (int ,int *,void const*,int,int ,int ) ;
 int h4_recv_pkts ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int h4_recv(struct hci_uart *hu, const void *data, int count)
{
 struct h4_struct *h4 = hu->priv;

 if (!test_bit(HCI_UART_REGISTERED, &hu->flags))
  return -EUNATCH;

 h4->rx_skb = h4_recv_buf(hu->hdev, h4->rx_skb, data, count,
     h4_recv_pkts, ARRAY_SIZE(h4_recv_pkts));
 if (IS_ERR(h4->rx_skb)) {
  int err = PTR_ERR(h4->rx_skb);
  bt_dev_err(hu->hdev, "Frame reassembly failed (%d)", err);
  h4->rx_skb = ((void*)0);
  return err;
 }

 return count;
}
