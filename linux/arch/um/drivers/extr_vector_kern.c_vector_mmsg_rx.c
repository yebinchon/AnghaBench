
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vector_queue {void** skbuff_vector; int queue_depth; int max_depth; struct mmsghdr* mmsg_vector; } ;
struct TYPE_12__ {int rx_queue_max; int rx_queue_running_average; int rx_csum_offload_good; int rx_encaps_errors; } ;
struct vector_private {int in_error; scalar_t__ header_size; int (* verify_header ) (int ,struct sk_buff*,struct vector_private*) ;scalar_t__ rx_header_size; TYPE_6__ estats; TYPE_5__* dev; TYPE_1__* fds; struct vector_queue* rx_queue; } ;
struct sk_buff {scalar_t__ len; int dev; int protocol; int ip_summed; } ;
struct TYPE_9__ {TYPE_2__* msg_iov; } ;
struct mmsghdr {scalar_t__ msg_len; TYPE_3__ msg_hdr; } ;
struct TYPE_10__ {int rx_packets; int rx_bytes; } ;
struct TYPE_11__ {TYPE_4__ stats; } ;
struct TYPE_8__ {int iov_base; } ;
struct TYPE_7__ {int rx_fd; } ;


 int CHECKSUM_UNNECESSARY ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int netif_rx (struct sk_buff*) ;
 int prep_queue_for_rx (struct vector_queue*) ;
 int pskb_trim (struct sk_buff*,scalar_t__) ;
 int stub1 (int ,struct sk_buff*,struct vector_private*) ;
 int uml_vector_recvmmsg (int ,struct mmsghdr*,int ,int ) ;

__attribute__((used)) static int vector_mmsg_rx(struct vector_private *vp)
{
 int packet_count, i;
 struct vector_queue *qi = vp->rx_queue;
 struct sk_buff *skb;
 struct mmsghdr *mmsg_vector = qi->mmsg_vector;
 void **skbuff_vector = qi->skbuff_vector;
 int header_check;





 prep_queue_for_rx(qi);



 packet_count = uml_vector_recvmmsg(
  vp->fds->rx_fd, qi->mmsg_vector, qi->max_depth, 0);

 if (packet_count < 0)
  vp->in_error = 1;

 if (packet_count <= 0)
  return packet_count;






 qi->queue_depth = packet_count;

 for (i = 0; i < packet_count; i++) {
  skb = (*skbuff_vector);
  if (mmsg_vector->msg_len > vp->header_size) {
   if (vp->header_size > 0) {
    header_check = vp->verify_header(
     mmsg_vector->msg_hdr.msg_iov->iov_base,
     skb,
     vp
    );
    if (header_check < 0) {





     dev_kfree_skb_irq(skb);
     vp->estats.rx_encaps_errors++;
     continue;
    }
    if (header_check > 0) {
     vp->estats.rx_csum_offload_good++;
     skb->ip_summed = CHECKSUM_UNNECESSARY;
    }
   }
   pskb_trim(skb,
    mmsg_vector->msg_len - vp->rx_header_size);
   skb->protocol = eth_type_trans(skb, skb->dev);




   vp->dev->stats.rx_bytes += skb->len;
   vp->dev->stats.rx_packets++;
   netif_rx(skb);
  } else {




   if (skb != ((void*)0))
    dev_kfree_skb_irq(skb);
  }
  (*skbuff_vector) = ((void*)0);

  mmsg_vector++;
  skbuff_vector++;
 }
 if (packet_count > 0) {
  if (vp->estats.rx_queue_max < packet_count)
   vp->estats.rx_queue_max = packet_count;
  vp->estats.rx_queue_running_average =
   (vp->estats.rx_queue_running_average + packet_count) >> 1;
 }
 return packet_count;
}
