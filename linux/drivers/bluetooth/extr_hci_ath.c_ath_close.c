
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {struct ath_struct* priv; } ;
struct ath_struct {int ctxtsw; int rx_skb; int txq; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int cancel_work_sync (int *) ;
 int kfree (struct ath_struct*) ;
 int kfree_skb (int ) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int ath_close(struct hci_uart *hu)
{
 struct ath_struct *ath = hu->priv;

 BT_DBG("hu %p", hu);

 skb_queue_purge(&ath->txq);

 kfree_skb(ath->rx_skb);

 cancel_work_sync(&ath->ctxtsw);

 hu->priv = ((void*)0);
 kfree(ath);

 return 0;
}
