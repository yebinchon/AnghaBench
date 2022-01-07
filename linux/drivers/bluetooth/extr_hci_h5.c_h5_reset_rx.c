
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct h5 {int flags; scalar_t__ rx_pending; int rx_func; int * rx_skb; } ;


 int H5_RX_ESC ;
 int clear_bit (int ,int *) ;
 int h5_rx_delimiter ;
 int kfree_skb (int *) ;

__attribute__((used)) static void h5_reset_rx(struct h5 *h5)
{
 if (h5->rx_skb) {
  kfree_skb(h5->rx_skb);
  h5->rx_skb = ((void*)0);
 }

 h5->rx_func = h5_rx_delimiter;
 h5->rx_pending = 0;
 clear_bit(H5_RX_ESC, &h5->flags);
}
