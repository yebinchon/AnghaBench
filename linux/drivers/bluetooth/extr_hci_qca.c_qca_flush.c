
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qca_data {int txq; int tx_wait_q; } ;
struct hci_uart {struct qca_data* priv; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int qca_flush(struct hci_uart *hu)
{
 struct qca_data *qca = hu->priv;

 BT_DBG("hu %p qca flush", hu);

 skb_queue_purge(&qca->tx_wait_q);
 skb_queue_purge(&qca->txq);

 return 0;
}
