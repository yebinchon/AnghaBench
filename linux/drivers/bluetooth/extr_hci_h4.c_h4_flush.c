
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {struct h4_struct* priv; } ;
struct h4_struct {int txq; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int h4_flush(struct hci_uart *hu)
{
 struct h4_struct *h4 = hu->priv;

 BT_DBG("hu %p", hu);

 skb_queue_purge(&h4->txq);

 return 0;
}
