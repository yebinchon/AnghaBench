
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_uart {int serdev; struct h5* priv; } ;
struct h5 {TYPE_1__* vnd; int unrel; int rel; int unack; int timer; } ;
struct TYPE_2__ {int (* close ) (struct h5*) ;} ;


 int del_timer_sync (int *) ;
 int kfree (struct h5*) ;
 int skb_queue_purge (int *) ;
 int stub1 (struct h5*) ;

__attribute__((used)) static int h5_close(struct hci_uart *hu)
{
 struct h5 *h5 = hu->priv;

 del_timer_sync(&h5->timer);

 skb_queue_purge(&h5->unack);
 skb_queue_purge(&h5->rel);
 skb_queue_purge(&h5->unrel);

 if (h5->vnd && h5->vnd->close)
  h5->vnd->close(h5);

 if (!hu->serdev)
  kfree(h5);

 return 0;
}
