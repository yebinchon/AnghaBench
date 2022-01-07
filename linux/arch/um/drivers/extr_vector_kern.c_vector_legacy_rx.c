
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int rx_csum_offload_good; int rx_encaps_errors; } ;
struct vector_private {int header_size; int in_error; int (* verify_header ) (int ,struct sk_buff*,struct vector_private*) ;TYPE_4__* dev; scalar_t__ rx_header_size; TYPE_2__ estats; int header_rxbuffer; TYPE_1__* fds; } ;
struct user_msghdr {int msg_iovlen; scalar_t__ msg_flags; scalar_t__ msg_controllen; int * msg_control; struct iovec* msg_iov; scalar_t__ msg_namelen; int * msg_name; } ;
struct sk_buff {scalar_t__ len; int dev; int protocol; int ip_summed; } ;
struct iovec {int iov_len; int iov_base; } ;
struct TYPE_7__ {int rx_packets; int rx_bytes; int rx_dropped; } ;
struct TYPE_8__ {TYPE_3__ stats; } ;
struct TYPE_5__ {int rx_fd; } ;


 int CHECKSUM_UNNECESSARY ;
 int DROP_BUFFER_SIZE ;
 int MAX_IOV_SIZE ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int drop_buffer ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int netif_rx (struct sk_buff*) ;
 struct sk_buff* prep_skb (struct vector_private*,struct user_msghdr*) ;
 int pskb_trim (struct sk_buff*,scalar_t__) ;
 int stub1 (int ,struct sk_buff*,struct vector_private*) ;
 int uml_vector_recvmsg (int ,struct user_msghdr*,int ) ;

__attribute__((used)) static int vector_legacy_rx(struct vector_private *vp)
{
 int pkt_len;
 struct user_msghdr hdr;
 struct iovec iov[2 + MAX_IOV_SIZE];
 int iovpos = 0;
 struct sk_buff *skb;
 int header_check;

 hdr.msg_name = ((void*)0);
 hdr.msg_namelen = 0;
 hdr.msg_iov = (struct iovec *) &iov;
 hdr.msg_control = ((void*)0);
 hdr.msg_controllen = 0;
 hdr.msg_flags = 0;

 if (vp->header_size > 0) {
  iov[0].iov_base = vp->header_rxbuffer;
  iov[0].iov_len = vp->header_size;
 }

 skb = prep_skb(vp, &hdr);

 if (skb == ((void*)0)) {



  iov[iovpos].iov_base = drop_buffer;
  iov[iovpos].iov_len = DROP_BUFFER_SIZE;
  hdr.msg_iovlen = 1;
  vp->dev->stats.rx_dropped++;
 }

 pkt_len = uml_vector_recvmsg(vp->fds->rx_fd, &hdr, 0);
 if (pkt_len < 0) {
  vp->in_error = 1;
  return pkt_len;
 }

 if (skb != ((void*)0)) {
  if (pkt_len > vp->header_size) {
   if (vp->header_size > 0) {
    header_check = vp->verify_header(
     vp->header_rxbuffer, skb, vp);
    if (header_check < 0) {
     dev_kfree_skb_irq(skb);
     vp->dev->stats.rx_dropped++;
     vp->estats.rx_encaps_errors++;
     return 0;
    }
    if (header_check > 0) {
     vp->estats.rx_csum_offload_good++;
     skb->ip_summed = CHECKSUM_UNNECESSARY;
    }
   }
   pskb_trim(skb, pkt_len - vp->rx_header_size);
   skb->protocol = eth_type_trans(skb, skb->dev);
   vp->dev->stats.rx_bytes += skb->len;
   vp->dev->stats.rx_packets++;
   netif_rx(skb);
  } else {
   dev_kfree_skb_irq(skb);
  }
 }
 return pkt_len;
}
