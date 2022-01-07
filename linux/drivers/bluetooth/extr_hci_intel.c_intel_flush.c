
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_data {int txq; } ;
struct hci_uart {struct intel_data* priv; } ;


 int BT_DBG (char*,struct hci_uart*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int intel_flush(struct hci_uart *hu)
{
 struct intel_data *intel = hu->priv;

 BT_DBG("hu %p", hu);

 skb_queue_purge(&intel->txq);

 return 0;
}
