
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vector_private {int in_error; TYPE_3__* dev; TYPE_1__* fds; int header_txbuffer; } ;
struct sk_buff {scalar_t__ len; } ;
struct iovec {int iov_base; } ;
struct TYPE_6__ {int tx_dropped; int tx_packets; int tx_bytes; } ;
struct TYPE_7__ {TYPE_2__ stats; } ;
struct TYPE_5__ {int tx_fd; } ;


 int MAX_IOV_SIZE ;
 int consume_skb (struct sk_buff*) ;
 int netif_trans_update (TYPE_3__*) ;
 int netif_wake_queue (TYPE_3__*) ;
 int prep_msg (struct vector_private*,struct sk_buff*,struct iovec*) ;
 int uml_vector_writev (int ,struct iovec*,int) ;

__attribute__((used)) static int writev_tx(struct vector_private *vp, struct sk_buff *skb)
{
 struct iovec iov[3 + MAX_IOV_SIZE];
 int iov_count, pkt_len = 0;

 iov[0].iov_base = vp->header_txbuffer;
 iov_count = prep_msg(vp, skb, (struct iovec *) &iov);

 if (iov_count < 1)
  goto drop;

 pkt_len = uml_vector_writev(
  vp->fds->tx_fd,
  (struct iovec *) &iov,
  iov_count
 );

 if (pkt_len < 0)
  goto drop;

 netif_trans_update(vp->dev);
 netif_wake_queue(vp->dev);

 if (pkt_len > 0) {
  vp->dev->stats.tx_bytes += skb->len;
  vp->dev->stats.tx_packets++;
 } else {
  vp->dev->stats.tx_dropped++;
 }
 consume_skb(skb);
 return pkt_len;
drop:
 vp->dev->stats.tx_dropped++;
 consume_skb(skb);
 if (pkt_len < 0)
  vp->in_error = 1;
 return pkt_len;
}
