
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_18__ {struct sk_buff* skb; } ;
typedef TYPE_4__ tx_simple ;
struct TYPE_19__ {int handle; } ;
typedef TYPE_5__ tx_out ;
struct sk_buff {int dummy; } ;
struct TYPE_17__ {int tx_ok; } ;
struct TYPE_20__ {TYPE_3__ stats; } ;
typedef TYPE_6__ amb_dev ;
struct TYPE_16__ {TYPE_1__* stats; } ;
struct TYPE_15__ {int tx; } ;
struct TYPE_14__ {TYPE_2__* vcc; } ;


 TYPE_13__* ATM_SKB (struct sk_buff*) ;
 int DBG_FLOW ;
 int DBG_TX ;
 int PRINTD (int,char*,TYPE_6__*,TYPE_5__*) ;
 int amb_kfree_skb (struct sk_buff*) ;
 int atomic_inc (int *) ;
 TYPE_4__* bus_to_virt (int ) ;
 int kfree (TYPE_4__*) ;

__attribute__((used)) static void tx_complete (amb_dev * dev, tx_out * tx) {
  tx_simple * tx_descr = bus_to_virt (tx->handle);
  struct sk_buff * skb = tx_descr->skb;

  PRINTD (DBG_FLOW|DBG_TX, "tx_complete %p %p", dev, tx);


  atomic_inc(&ATM_SKB(skb)->vcc->stats->tx);


  kfree (tx_descr);


  amb_kfree_skb (skb);

  dev->stats.tx_ok++;
  return;
}
