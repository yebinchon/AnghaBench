
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {int hdev; int flags; struct ag6xx_data* priv; } ;
struct ag6xx_data {int * rx_skb; } ;


 int ARRAY_SIZE (int ) ;
 int EUNATCH ;
 int HCI_UART_REGISTERED ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int ag6xx_recv_pkts ;
 int bt_dev_err (int ,char*,int) ;
 int * h4_recv_buf (int ,int *,void const*,int,int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int ag6xx_recv(struct hci_uart *hu, const void *data, int count)
{
 struct ag6xx_data *ag6xx = hu->priv;

 if (!test_bit(HCI_UART_REGISTERED, &hu->flags))
  return -EUNATCH;

 ag6xx->rx_skb = h4_recv_buf(hu->hdev, ag6xx->rx_skb, data, count,
        ag6xx_recv_pkts,
        ARRAY_SIZE(ag6xx_recv_pkts));
 if (IS_ERR(ag6xx->rx_skb)) {
  int err = PTR_ERR(ag6xx->rx_skb);
  bt_dev_err(hu->hdev, "Frame reassembly failed (%d)", err);
  ag6xx->rx_skb = ((void*)0);
  return err;
 }

 return count;
}
