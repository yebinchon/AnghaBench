
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_uart {struct ath_struct* priv; } ;
struct ath_struct {int txq; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int ath_flush(struct hci_uart *hu)
{
 struct ath_struct *ath = hu->priv;

 BT_DBG("hu %p", hu);

 skb_queue_purge(&ath->txq);

 return 0;
}
