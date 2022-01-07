
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qca_data {int * rx_skb; } ;
struct hci_uart {int hdev; int flags; struct qca_data* priv; } ;


 int ARRAY_SIZE (int ) ;
 int EUNATCH ;
 int HCI_UART_REGISTERED ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int bt_dev_err (int ,char*,int) ;
 int * h4_recv_buf (int ,int *,void const*,int,int ,int ) ;
 int qca_recv_pkts ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int qca_recv(struct hci_uart *hu, const void *data, int count)
{
 struct qca_data *qca = hu->priv;

 if (!test_bit(HCI_UART_REGISTERED, &hu->flags))
  return -EUNATCH;

 qca->rx_skb = h4_recv_buf(hu->hdev, qca->rx_skb, data, count,
      qca_recv_pkts, ARRAY_SIZE(qca_recv_pkts));
 if (IS_ERR(qca->rx_skb)) {
  int err = PTR_ERR(qca->rx_skb);
  bt_dev_err(hu->hdev, "Frame reassembly failed (%d)", err);
  qca->rx_skb = ((void*)0);
  return err;
 }

 return count;
}
