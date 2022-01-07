
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct sfe_ipv6_ip_hdr {int version; unsigned int nexthdr; int payload_len; } ;
struct sfe_ipv6_frag_hdr {int frag_off; } ;
struct sfe_ipv6_ext_hdr {unsigned int hdr_len; unsigned int next_hdr; } ;
struct sfe_ipv6 {int lock; int packets_not_forwarded; int * exception_events; } ;
struct net_device {int dummy; } ;


 int DEBUG_TRACE (char*,...) ;
 unsigned int IPPROTO_ICMPV6 ;
 unsigned int IPPROTO_TCP ;
 unsigned int IPPROTO_UDP ;
 size_t SFE_IPV6_EXCEPTION_EVENT_DATAGRAM_INCOMPLETE ;
 size_t SFE_IPV6_EXCEPTION_EVENT_HEADER_INCOMPLETE ;
 size_t SFE_IPV6_EXCEPTION_EVENT_NON_INITIAL_FRAGMENT ;
 size_t SFE_IPV6_EXCEPTION_EVENT_NON_V6 ;
 size_t SFE_IPV6_EXCEPTION_EVENT_UNHANDLED_PROTOCOL ;
 unsigned int SFE_IPV6_EXT_HDR_FRAG ;
 unsigned int SFE_IPV6_FRAG_OFFSET ;
 struct sfe_ipv6 __si6 ;
 unsigned int ntohs (int ) ;
 int pskb_may_pull (struct sk_buff*,unsigned int) ;
 int sfe_ipv6_is_ext_hdr (unsigned int) ;
 int sfe_ipv6_recv_icmp (struct sfe_ipv6*,struct sk_buff*,struct net_device*,unsigned int,struct sfe_ipv6_ip_hdr*,unsigned int) ;
 int sfe_ipv6_recv_tcp (struct sfe_ipv6*,struct sk_buff*,struct net_device*,unsigned int,struct sfe_ipv6_ip_hdr*,unsigned int,int) ;
 int sfe_ipv6_recv_udp (struct sfe_ipv6*,struct sk_buff*,struct net_device*,unsigned int,struct sfe_ipv6_ip_hdr*,unsigned int,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;

int sfe_ipv6_recv(struct net_device *dev, struct sk_buff *skb)
{
 struct sfe_ipv6 *si = &__si6;
 unsigned int len;
 unsigned int payload_len;
 unsigned int ihl = sizeof(struct sfe_ipv6_ip_hdr);
 bool flush_on_find = 0;
 struct sfe_ipv6_ip_hdr *iph;
 u8 next_hdr;




 len = skb->len;
 if (!pskb_may_pull(skb, ihl + sizeof(struct sfe_ipv6_ext_hdr))) {
  spin_lock_bh(&si->lock);
  si->exception_events[SFE_IPV6_EXCEPTION_EVENT_HEADER_INCOMPLETE]++;
  si->packets_not_forwarded++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("len: %u is too short\n", len);
  return 0;
 }




 iph = (struct sfe_ipv6_ip_hdr *)skb->data;
 if (unlikely(iph->version != 6)) {
  spin_lock_bh(&si->lock);
  si->exception_events[SFE_IPV6_EXCEPTION_EVENT_NON_V6]++;
  si->packets_not_forwarded++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("IP version: %u\n", iph->version);
  return 0;
 }




 payload_len = ntohs(iph->payload_len);
 if (unlikely(payload_len > (len - ihl))) {
  spin_lock_bh(&si->lock);
  si->exception_events[SFE_IPV6_EXCEPTION_EVENT_DATAGRAM_INCOMPLETE]++;
  si->packets_not_forwarded++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("payload_len: %u, exceeds len: %u\n", payload_len, (len - sizeof(struct sfe_ipv6_ip_hdr)));
  return 0;
 }

 next_hdr = iph->nexthdr;
 while (unlikely(sfe_ipv6_is_ext_hdr(next_hdr))) {
  struct sfe_ipv6_ext_hdr *ext_hdr;
  unsigned int ext_hdr_len;

  ext_hdr = (struct sfe_ipv6_ext_hdr *)(skb->data + ihl);
  if (next_hdr == SFE_IPV6_EXT_HDR_FRAG) {
   struct sfe_ipv6_frag_hdr *frag_hdr = (struct sfe_ipv6_frag_hdr *)ext_hdr;
   unsigned int frag_off = ntohs(frag_hdr->frag_off);

   if (frag_off & SFE_IPV6_FRAG_OFFSET) {
    spin_lock_bh(&si->lock);
    si->exception_events[SFE_IPV6_EXCEPTION_EVENT_NON_INITIAL_FRAGMENT]++;
    si->packets_not_forwarded++;
    spin_unlock_bh(&si->lock);

    DEBUG_TRACE("non-initial fragment\n");
    return 0;
   }
  }

  ext_hdr_len = ext_hdr->hdr_len;
  ext_hdr_len <<= 3;
  ext_hdr_len += sizeof(struct sfe_ipv6_ext_hdr);
  ihl += ext_hdr_len;
  if (!pskb_may_pull(skb, ihl + sizeof(struct sfe_ipv6_ext_hdr))) {
   spin_lock_bh(&si->lock);
   si->exception_events[SFE_IPV6_EXCEPTION_EVENT_HEADER_INCOMPLETE]++;
   si->packets_not_forwarded++;
   spin_unlock_bh(&si->lock);

   DEBUG_TRACE("extension header %d not completed\n", next_hdr);
   return 0;
  }

  flush_on_find = 1;
  next_hdr = ext_hdr->next_hdr;
 }

 if (IPPROTO_UDP == next_hdr) {
  return sfe_ipv6_recv_udp(si, skb, dev, len, iph, ihl, flush_on_find);
 }

 if (IPPROTO_TCP == next_hdr) {
  return sfe_ipv6_recv_tcp(si, skb, dev, len, iph, ihl, flush_on_find);
 }

 if (IPPROTO_ICMPV6 == next_hdr) {
  return sfe_ipv6_recv_icmp(si, skb, dev, len, iph, ihl);
 }

 spin_lock_bh(&si->lock);
 si->exception_events[SFE_IPV6_EXCEPTION_EVENT_UNHANDLED_PROTOCOL]++;
 si->packets_not_forwarded++;
 spin_unlock_bh(&si->lock);

 DEBUG_TRACE("not UDP, TCP or ICMP: %u\n", next_hdr);
 return 0;
}
