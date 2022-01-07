
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {int hdev; struct ath_struct* priv; } ;
struct ath_struct {int * rx_skb; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int ath_recv_pkts ;
 int bt_dev_err (int ,char*,int) ;
 int * h4_recv_buf (int ,int *,void const*,int,int ,int ) ;

__attribute__((used)) static int ath_recv(struct hci_uart *hu, const void *data, int count)
{
 struct ath_struct *ath = hu->priv;

 ath->rx_skb = h4_recv_buf(hu->hdev, ath->rx_skb, data, count,
      ath_recv_pkts, ARRAY_SIZE(ath_recv_pkts));
 if (IS_ERR(ath->rx_skb)) {
  int err = PTR_ERR(ath->rx_skb);
  bt_dev_err(hu->hdev, "Frame reassembly failed (%d)", err);
  ath->rx_skb = ((void*)0);
  return err;
 }

 return count;
}
