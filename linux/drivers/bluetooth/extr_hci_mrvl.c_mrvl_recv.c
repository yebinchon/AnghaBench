
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrvl_data {int * rx_skb; } ;
struct hci_uart {int hdev; int flags; struct mrvl_data* priv; } ;


 int ARRAY_SIZE (int ) ;
 int EUNATCH ;
 int HCI_UART_REGISTERED ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int bt_dev_err (int ,char*,int) ;
 int * h4_recv_buf (int ,int *,void const*,int,int ,int ) ;
 int mrvl_recv_pkts ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int mrvl_recv(struct hci_uart *hu, const void *data, int count)
{
 struct mrvl_data *mrvl = hu->priv;

 if (!test_bit(HCI_UART_REGISTERED, &hu->flags))
  return -EUNATCH;

 mrvl->rx_skb = h4_recv_buf(hu->hdev, mrvl->rx_skb, data, count,
        mrvl_recv_pkts,
        ARRAY_SIZE(mrvl_recv_pkts));
 if (IS_ERR(mrvl->rx_skb)) {
  int err = PTR_ERR(mrvl->rx_skb);
  bt_dev_err(hu->hdev, "Frame reassembly failed (%d)", err);
  mrvl->rx_skb = ((void*)0);
  return err;
 }

 return count;
}
