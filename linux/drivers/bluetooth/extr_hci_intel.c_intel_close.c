
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_data {int rx_skb; int txq; int busy_work; } ;
struct hci_uart {struct intel_data* priv; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int cancel_work_sync (int *) ;
 int intel_set_power (struct hci_uart*,int) ;
 int kfree (struct intel_data*) ;
 int kfree_skb (int ) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int intel_close(struct hci_uart *hu)
{
 struct intel_data *intel = hu->priv;

 BT_DBG("hu %p", hu);

 cancel_work_sync(&intel->busy_work);

 intel_set_power(hu, 0);

 skb_queue_purge(&intel->txq);
 kfree_skb(intel->rx_skb);
 kfree(intel);

 hu->priv = ((void*)0);
 return 0;
}
