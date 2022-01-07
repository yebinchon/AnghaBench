
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct sfe_ipv4_ip_hdr {int version; int ihl; unsigned int protocol; int frag_off; int tot_len; } ;
struct sfe_ipv4 {int lock; int packets_not_forwarded; int * exception_events; } ;
struct net_device {int dummy; } ;


 int DEBUG_TRACE (char*,...) ;
 unsigned int IPPROTO_ICMP ;
 unsigned int IPPROTO_TCP ;
 unsigned int IPPROTO_UDP ;
 unsigned int IP_MF ;
 unsigned int IP_OFFSET ;
 size_t SFE_IPV4_EXCEPTION_EVENT_BAD_TOTAL_LENGTH ;
 size_t SFE_IPV4_EXCEPTION_EVENT_CSUM_ERROR ;
 size_t SFE_IPV4_EXCEPTION_EVENT_DATAGRAM_INCOMPLETE ;
 size_t SFE_IPV4_EXCEPTION_EVENT_HEADER_INCOMPLETE ;
 size_t SFE_IPV4_EXCEPTION_EVENT_IP_OPTIONS_INCOMPLETE ;
 size_t SFE_IPV4_EXCEPTION_EVENT_NON_INITIAL_FRAGMENT ;
 size_t SFE_IPV4_EXCEPTION_EVENT_NON_V4 ;
 size_t SFE_IPV4_EXCEPTION_EVENT_UNHANDLED_PROTOCOL ;
 struct sfe_ipv4 __si ;
 int ip_fast_csum (int *,int) ;
 unsigned int ntohs (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int sfe_ipv4_recv_icmp (struct sfe_ipv4*,struct sk_buff*,struct net_device*,unsigned int,struct sfe_ipv4_ip_hdr*,unsigned int) ;
 int sfe_ipv4_recv_tcp (struct sfe_ipv4*,struct sk_buff*,struct net_device*,unsigned int,struct sfe_ipv4_ip_hdr*,unsigned int,int) ;
 int sfe_ipv4_recv_udp (struct sfe_ipv4*,struct sk_buff*,struct net_device*,unsigned int,struct sfe_ipv4_ip_hdr*,unsigned int,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;

int sfe_ipv4_recv(struct net_device *dev, struct sk_buff *skb)
{
 struct sfe_ipv4 *si = &__si;
 unsigned int len;
 unsigned int tot_len;
 unsigned int frag_off;
 unsigned int ihl;
 bool flush_on_find;
 bool ip_options;
 struct sfe_ipv4_ip_hdr *iph;
 u32 protocol;




 len = skb->len;
 if (unlikely(!pskb_may_pull(skb, sizeof(struct sfe_ipv4_ip_hdr)))) {
  spin_lock_bh(&si->lock);
  si->exception_events[SFE_IPV4_EXCEPTION_EVENT_HEADER_INCOMPLETE]++;
  si->packets_not_forwarded++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("len: %u is too short\n", len);
  return 0;
 }




 iph = (struct sfe_ipv4_ip_hdr *)skb->data;
 tot_len = ntohs(iph->tot_len);
 if (unlikely(tot_len < sizeof(struct sfe_ipv4_ip_hdr))) {
  spin_lock_bh(&si->lock);
  si->exception_events[SFE_IPV4_EXCEPTION_EVENT_BAD_TOTAL_LENGTH]++;
  si->packets_not_forwarded++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("tot_len: %u is too short\n", tot_len);
  return 0;
 }




 if (unlikely(iph->version != 4)) {
  spin_lock_bh(&si->lock);
  si->exception_events[SFE_IPV4_EXCEPTION_EVENT_NON_V4]++;
  si->packets_not_forwarded++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("IP version: %u\n", iph->version);
  return 0;
 }




 if (unlikely(tot_len > len)) {
  spin_lock_bh(&si->lock);
  si->exception_events[SFE_IPV4_EXCEPTION_EVENT_DATAGRAM_INCOMPLETE]++;
  si->packets_not_forwarded++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("tot_len: %u, exceeds len: %u\n", tot_len, len);
  return 0;
 }




 frag_off = ntohs(iph->frag_off);
 if (unlikely(frag_off & IP_OFFSET)) {
  spin_lock_bh(&si->lock);
  si->exception_events[SFE_IPV4_EXCEPTION_EVENT_NON_INITIAL_FRAGMENT]++;
  si->packets_not_forwarded++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("non-initial fragment\n");
  return 0;
 }




 flush_on_find = unlikely(frag_off & IP_MF) ? 1 : 0;





 ihl = iph->ihl << 2;
 ip_options = unlikely(ihl != sizeof(struct sfe_ipv4_ip_hdr)) ? 1 : 0;
 if (unlikely(ip_options)) {
  if (unlikely(len < ihl)) {
   spin_lock_bh(&si->lock);
   si->exception_events[SFE_IPV4_EXCEPTION_EVENT_IP_OPTIONS_INCOMPLETE]++;
   si->packets_not_forwarded++;
   spin_unlock_bh(&si->lock);

   DEBUG_TRACE("len: %u is too short for header of size: %u\n", len, ihl);
   return 0;
  }

  flush_on_find = 1;
 }

 if (unlikely(ip_fast_csum((u8 *)iph, iph->ihl))) {
  spin_lock_bh(&si->lock);
  si->exception_events[SFE_IPV4_EXCEPTION_EVENT_CSUM_ERROR]++;
  si->packets_not_forwarded++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("checksum of ipv4 header is invalid\n");
  return 0;
 }

 protocol = iph->protocol;
 if (IPPROTO_UDP == protocol) {
  return sfe_ipv4_recv_udp(si, skb, dev, len, iph, ihl, flush_on_find);
 }

 if (IPPROTO_TCP == protocol) {
  return sfe_ipv4_recv_tcp(si, skb, dev, len, iph, ihl, flush_on_find);
 }

 if (IPPROTO_ICMP == protocol) {
  return sfe_ipv4_recv_icmp(si, skb, dev, len, iph, ihl);
 }

 spin_lock_bh(&si->lock);
 si->exception_events[SFE_IPV4_EXCEPTION_EVENT_UNHANDLED_PROTOCOL]++;
 si->packets_not_forwarded++;
 spin_unlock_bh(&si->lock);

 DEBUG_TRACE("not UDP, TCP or ICMP: %u\n", protocol);
 return 0;
}
