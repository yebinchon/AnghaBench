
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_uart {scalar_t__ hdev; struct h5* priv; } ;
struct h5 {int rx_pending; TYPE_1__* rx_skb; int rx_func; } ;
struct TYPE_2__ {void* dev; } ;


 int BT_ERR (char*) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int H5_MAX_LEN ;
 unsigned char SLIP_DELIMITER ;
 TYPE_1__* bt_skb_alloc (int ,int ) ;
 int h5_reset_rx (struct h5*) ;
 int h5_rx_3wire_hdr ;

__attribute__((used)) static int h5_rx_pkt_start(struct hci_uart *hu, unsigned char c)
{
 struct h5 *h5 = hu->priv;

 if (c == SLIP_DELIMITER)
  return 1;

 h5->rx_func = h5_rx_3wire_hdr;
 h5->rx_pending = 4;

 h5->rx_skb = bt_skb_alloc(H5_MAX_LEN, GFP_ATOMIC);
 if (!h5->rx_skb) {
  BT_ERR("Can't allocate mem for new packet");
  h5_reset_rx(h5);
  return -ENOMEM;
 }

 h5->rx_skb->dev = (void *)hu->hdev;

 return 0;
}
