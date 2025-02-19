
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {unsigned char head; struct sk_buff* data; int truesize; TYPE_2__* rxq; int flags; } ;
struct TYPE_4__ {int host_address; int handle; } ;
typedef TYPE_1__ rx_in ;
typedef long gfp_t ;
struct TYPE_5__ {scalar_t__ pending; scalar_t__ maximum; scalar_t__ buffers_wanted; int buffer_size; } ;
typedef TYPE_2__ amb_rxq ;
typedef struct sk_buff amb_dev ;


 int DBG_FLOW ;
 int DBG_POOL ;
 int DBG_SKB ;
 int PRINTD (int,char*,...) ;
 struct sk_buff* alloc_skb (int ,long) ;
 scalar_t__ check_area (struct sk_buff*,int ) ;
 int cpu_to_be32 (int ) ;
 int dead ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ rx_give (struct sk_buff*,TYPE_1__*,unsigned char) ;
 scalar_t__ skb_end_offset (struct sk_buff*) ;
 scalar_t__ test_bit (int ,int *) ;
 int virt_to_bus (struct sk_buff*) ;

__attribute__((used)) static void fill_rx_pool (amb_dev * dev, unsigned char pool,
                                 gfp_t priority)
{
  rx_in rx;
  amb_rxq * rxq;

  PRINTD (DBG_FLOW|DBG_POOL, "fill_rx_pool %p %hu %x", dev, pool, priority);

  if (test_bit (dead, &dev->flags))
    return;

  rxq = &dev->rxq[pool];
  while (rxq->pending < rxq->maximum && rxq->pending < rxq->buffers_wanted) {

    struct sk_buff * skb = alloc_skb (rxq->buffer_size, priority);
    if (!skb) {
      PRINTD (DBG_SKB|DBG_POOL, "failed to allocate skb for RX pool %hu", pool);
      return;
    }
    if (check_area (skb->data, skb->truesize)) {
      dev_kfree_skb_any (skb);
      return;
    }

    PRINTD (DBG_SKB, "allocated skb at %p, head %p, area %li",
     skb, skb->head, (long) skb_end_offset(skb));
    rx.handle = virt_to_bus (skb);
    rx.host_address = cpu_to_be32 (virt_to_bus (skb->data));
    if (rx_give (dev, &rx, pool))
      dev_kfree_skb_any (skb);

  }

  return;
}
