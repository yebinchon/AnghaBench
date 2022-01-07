
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vector_queue {int head; TYPE_2__* dev; struct sk_buff** skbuff_vector; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_3__ {int tx_bytes; int tx_packets; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int dev_consume_skb_any (struct sk_buff*) ;
 int netdev_completed_queue (TYPE_2__*,int,int) ;
 int vector_advancehead (struct vector_queue*,int) ;

__attribute__((used)) static int consume_vector_skbs(struct vector_queue *qi, int count)
{
 struct sk_buff *skb;
 int skb_index;
 int bytes_compl = 0;

 for (skb_index = qi->head; skb_index < qi->head + count; skb_index++) {
  skb = *(qi->skbuff_vector + skb_index);



  bytes_compl += skb->len;
  *(qi->skbuff_vector + skb_index) = ((void*)0);
  dev_consume_skb_any(skb);
 }
 qi->dev->stats.tx_bytes += bytes_compl;
 qi->dev->stats.tx_packets += count;
 netdev_completed_queue(qi->dev, count, bytes_compl);
 return vector_advancehead(qi, count);
}
