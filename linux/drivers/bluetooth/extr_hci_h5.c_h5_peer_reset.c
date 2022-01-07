
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {int hdev; struct h5* priv; } ;
struct h5 {scalar_t__ tx_ack; scalar_t__ tx_seq; int unack; int unrel; int rel; int timer; int state; } ;


 int BT_ERR (char*) ;
 int H5_UNINITIALIZED ;
 int del_timer (int *) ;
 int hci_reset_dev (int ) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void h5_peer_reset(struct hci_uart *hu)
{
 struct h5 *h5 = hu->priv;

 BT_ERR("Peer device has reset");

 h5->state = H5_UNINITIALIZED;

 del_timer(&h5->timer);

 skb_queue_purge(&h5->rel);
 skb_queue_purge(&h5->unrel);
 skb_queue_purge(&h5->unack);

 h5->tx_seq = 0;
 h5->tx_ack = 0;


 hci_reset_dev(hu->hdev);
}
