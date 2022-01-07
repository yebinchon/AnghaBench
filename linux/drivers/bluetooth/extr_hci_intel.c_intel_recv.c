
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_data {int * rx_skb; } ;
struct hci_uart {int hdev; int flags; struct intel_data* priv; } ;


 int ARRAY_SIZE (int ) ;
 int EUNATCH ;
 int HCI_UART_REGISTERED ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int bt_dev_err (int ,char*,int) ;
 int * h4_recv_buf (int ,int *,void const*,int,int ,int ) ;
 int intel_recv_pkts ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int intel_recv(struct hci_uart *hu, const void *data, int count)
{
 struct intel_data *intel = hu->priv;

 if (!test_bit(HCI_UART_REGISTERED, &hu->flags))
  return -EUNATCH;

 intel->rx_skb = h4_recv_buf(hu->hdev, intel->rx_skb, data, count,
        intel_recv_pkts,
        ARRAY_SIZE(intel_recv_pkts));
 if (IS_ERR(intel->rx_skb)) {
  int err = PTR_ERR(intel->rx_skb);
  bt_dev_err(hu->hdev, "Frame reassembly failed (%d)", err);
  intel->rx_skb = ((void*)0);
  return err;
 }

 return count;
}
