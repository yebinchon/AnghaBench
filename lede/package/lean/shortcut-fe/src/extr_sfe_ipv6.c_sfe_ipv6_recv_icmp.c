
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct sfe_ipv6_udp_hdr {int dest; int source; } ;
struct sfe_ipv6_tcp_hdr {int dest; int source; } ;
struct sfe_ipv6_addr {int dummy; } ;
struct sfe_ipv6_ip_hdr {int version; int nexthdr; struct sfe_ipv6_addr daddr; struct sfe_ipv6_addr saddr; } ;
struct sfe_ipv6_frag_hdr {int frag_off; } ;
struct sfe_ipv6_ext_hdr {unsigned int hdr_len; int next_hdr; } ;
struct sfe_ipv6_connection_match {struct sfe_ipv6_connection* connection; } ;
struct sfe_ipv6_connection {int dummy; } ;
struct sfe_ipv6 {int lock; int packets_not_forwarded; int * exception_events; } ;
struct net_device {int dummy; } ;
struct icmp6hdr {scalar_t__ icmp6_type; } ;
typedef int __be16 ;


 int DEBUG_TRACE (char*,...) ;
 scalar_t__ ICMPV6_DEST_UNREACH ;
 scalar_t__ ICMPV6_TIME_EXCEED ;


 size_t SFE_IPV6_EXCEPTION_EVENT_HEADER_INCOMPLETE ;
 size_t SFE_IPV6_EXCEPTION_EVENT_ICMP_FLUSHED_CONNECTION ;
 size_t SFE_IPV6_EXCEPTION_EVENT_ICMP_HEADER_INCOMPLETE ;
 size_t SFE_IPV6_EXCEPTION_EVENT_ICMP_IPV6_HEADER_INCOMPLETE ;
 size_t SFE_IPV6_EXCEPTION_EVENT_ICMP_IPV6_NON_V6 ;
 size_t SFE_IPV6_EXCEPTION_EVENT_ICMP_IPV6_UNHANDLED_PROTOCOL ;
 size_t SFE_IPV6_EXCEPTION_EVENT_ICMP_NO_CONNECTION ;
 size_t SFE_IPV6_EXCEPTION_EVENT_ICMP_UNHANDLED_TYPE ;
 size_t SFE_IPV6_EXCEPTION_EVENT_NON_INITIAL_FRAGMENT ;
 int SFE_IPV6_EXT_HDR_FRAG ;
 unsigned int SFE_IPV6_FRAG_OFFSET ;
 int SFE_SYNC_REASON_FLUSH ;
 unsigned int ntohs (int ) ;
 int pskb_may_pull (struct sk_buff*,unsigned int) ;
 struct sfe_ipv6_connection_match* sfe_ipv6_find_connection_match (struct sfe_ipv6*,struct net_device*,int,struct sfe_ipv6_addr*,int ,struct sfe_ipv6_addr*,int ) ;
 int sfe_ipv6_flush_connection (struct sfe_ipv6*,struct sfe_ipv6_connection*,int ) ;
 int sfe_ipv6_is_ext_hdr (int) ;
 int sfe_ipv6_remove_connection (struct sfe_ipv6*,struct sfe_ipv6_connection*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sfe_ipv6_recv_icmp(struct sfe_ipv6 *si, struct sk_buff *skb, struct net_device *dev,
         unsigned int len, struct sfe_ipv6_ip_hdr *iph, unsigned int ihl)
{
 struct icmp6hdr *icmph;
 struct sfe_ipv6_ip_hdr *icmp_iph;
 struct sfe_ipv6_udp_hdr *icmp_udph;
 struct sfe_ipv6_tcp_hdr *icmp_tcph;
 struct sfe_ipv6_addr *src_ip;
 struct sfe_ipv6_addr *dest_ip;
 __be16 src_port;
 __be16 dest_port;
 struct sfe_ipv6_connection_match *cm;
 struct sfe_ipv6_connection *c;
 u8 next_hdr;




 len -= ihl;
 if (!pskb_may_pull(skb, ihl + sizeof(struct icmp6hdr))) {
  spin_lock_bh(&si->lock);
  si->exception_events[SFE_IPV6_EXCEPTION_EVENT_ICMP_HEADER_INCOMPLETE]++;
  si->packets_not_forwarded++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("packet too short for ICMP header\n");
  return 0;
 }




 icmph = (struct icmp6hdr *)(skb->data + ihl);
 if ((icmph->icmp6_type != ICMPV6_DEST_UNREACH)
     && (icmph->icmp6_type != ICMPV6_TIME_EXCEED)) {
  spin_lock_bh(&si->lock);
  si->exception_events[SFE_IPV6_EXCEPTION_EVENT_ICMP_UNHANDLED_TYPE]++;
  si->packets_not_forwarded++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("unhandled ICMP type: 0x%x\n", icmph->icmp6_type);
  return 0;
 }






 len -= sizeof(struct icmp6hdr);
 ihl += sizeof(struct icmp6hdr);
 if (!pskb_may_pull(skb, ihl + sizeof(struct sfe_ipv6_ip_hdr) + sizeof(struct sfe_ipv6_ext_hdr))) {
  spin_lock_bh(&si->lock);
  si->exception_events[SFE_IPV6_EXCEPTION_EVENT_ICMP_IPV6_HEADER_INCOMPLETE]++;
  si->packets_not_forwarded++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("Embedded IP header not complete\n");
  return 0;
 }




 icmp_iph = (struct sfe_ipv6_ip_hdr *)(icmph + 1);
 if (unlikely(icmp_iph->version != 6)) {
  spin_lock_bh(&si->lock);
  si->exception_events[SFE_IPV6_EXCEPTION_EVENT_ICMP_IPV6_NON_V6]++;
  si->packets_not_forwarded++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("IP version: %u\n", icmp_iph->version);
  return 0;
 }

 len -= sizeof(struct sfe_ipv6_ip_hdr);
 ihl += sizeof(struct sfe_ipv6_ip_hdr);
 next_hdr = icmp_iph->nexthdr;
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
  len -= ext_hdr_len;
  ihl += ext_hdr_len;




  if (!pskb_may_pull(skb, ihl + sizeof(struct sfe_ipv6_ext_hdr))) {
   spin_lock_bh(&si->lock);
   si->exception_events[SFE_IPV6_EXCEPTION_EVENT_HEADER_INCOMPLETE]++;
   si->packets_not_forwarded++;
   spin_unlock_bh(&si->lock);

   DEBUG_TRACE("extension header %d not completed\n", next_hdr);
   return 0;
  }

  next_hdr = ext_hdr->next_hdr;
 }




 switch (next_hdr) {
 case 128:
  icmp_udph = (struct sfe_ipv6_udp_hdr *)(skb->data + ihl);
  src_port = icmp_udph->source;
  dest_port = icmp_udph->dest;
  break;

 case 129:
  icmp_tcph = (struct sfe_ipv6_tcp_hdr *)(skb->data + ihl);
  src_port = icmp_tcph->source;
  dest_port = icmp_tcph->dest;
  break;

 default:
  spin_lock_bh(&si->lock);
  si->exception_events[SFE_IPV6_EXCEPTION_EVENT_ICMP_IPV6_UNHANDLED_PROTOCOL]++;
  si->packets_not_forwarded++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("Unhandled embedded IP protocol: %u\n", next_hdr);
  return 0;
 }

 src_ip = &icmp_iph->saddr;
 dest_ip = &icmp_iph->daddr;

 spin_lock_bh(&si->lock);
 cm = sfe_ipv6_find_connection_match(si, dev, icmp_iph->nexthdr, dest_ip, dest_port, src_ip, src_port);
 if (unlikely(!cm)) {
  si->exception_events[SFE_IPV6_EXCEPTION_EVENT_ICMP_NO_CONNECTION]++;
  si->packets_not_forwarded++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("no connection found\n");
  return 0;
 }





 c = cm->connection;
 sfe_ipv6_remove_connection(si, c);
 si->exception_events[SFE_IPV6_EXCEPTION_EVENT_ICMP_FLUSHED_CONNECTION]++;
 si->packets_not_forwarded++;
 spin_unlock_bh(&si->lock);

 sfe_ipv6_flush_connection(si, c, SFE_SYNC_REASON_FLUSH);
 return 0;
}
