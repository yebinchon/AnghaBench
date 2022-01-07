
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct sfe_ipv4_udp_hdr {int dest; int source; } ;
struct sfe_ipv4_tcp_hdr {int dest; int source; } ;
struct sfe_ipv4_ip_hdr {int version; unsigned int ihl; int protocol; int daddr; int saddr; } ;
struct sfe_ipv4_connection_match {struct sfe_ipv4_connection* connection; } ;
struct sfe_ipv4_connection {int dummy; } ;
struct sfe_ipv4 {int lock; int packets_not_forwarded; int * exception_events; } ;
struct net_device {int dummy; } ;
struct icmphdr {scalar_t__ type; } ;
typedef int __be32 ;
typedef int __be16 ;


 int DEBUG_TRACE (char*,...) ;
 scalar_t__ ICMP_DEST_UNREACH ;
 scalar_t__ ICMP_TIME_EXCEEDED ;


 size_t SFE_IPV4_EXCEPTION_EVENT_ICMP_FLUSHED_CONNECTION ;
 size_t SFE_IPV4_EXCEPTION_EVENT_ICMP_HEADER_INCOMPLETE ;
 size_t SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_HEADER_INCOMPLETE ;
 size_t SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_IP_OPTIONS_INCOMPLETE ;
 size_t SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_NON_V4 ;
 size_t SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_TCP_HEADER_INCOMPLETE ;
 size_t SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_UDP_HEADER_INCOMPLETE ;
 size_t SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_UNHANDLED_PROTOCOL ;
 size_t SFE_IPV4_EXCEPTION_EVENT_ICMP_NO_CONNECTION ;
 size_t SFE_IPV4_EXCEPTION_EVENT_ICMP_UNHANDLED_TYPE ;
 int SFE_SYNC_REASON_FLUSH ;
 int pskb_may_pull (struct sk_buff*,int) ;
 struct sfe_ipv4_connection_match* sfe_ipv4_find_sfe_ipv4_connection_match (struct sfe_ipv4*,struct net_device*,int,int ,int ,int ,int ) ;
 int sfe_ipv4_flush_sfe_ipv4_connection (struct sfe_ipv4*,struct sfe_ipv4_connection*,int ) ;
 int sfe_ipv4_remove_sfe_ipv4_connection (struct sfe_ipv4*,struct sfe_ipv4_connection*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sfe_ipv4_recv_icmp(struct sfe_ipv4 *si, struct sk_buff *skb, struct net_device *dev,
         unsigned int len, struct sfe_ipv4_ip_hdr *iph, unsigned int ihl)
{
 struct icmphdr *icmph;
 struct sfe_ipv4_ip_hdr *icmp_iph;
 unsigned int icmp_ihl_words;
 unsigned int icmp_ihl;
 u32 *icmp_trans_h;
 struct sfe_ipv4_udp_hdr *icmp_udph;
 struct sfe_ipv4_tcp_hdr *icmp_tcph;
 __be32 src_ip;
 __be32 dest_ip;
 __be16 src_port;
 __be16 dest_port;
 struct sfe_ipv4_connection_match *cm;
 struct sfe_ipv4_connection *c;
 u32 pull_len = sizeof(struct icmphdr) + ihl;




 len -= ihl;
 if (!pskb_may_pull(skb, pull_len)) {
  spin_lock_bh(&si->lock);
  si->exception_events[SFE_IPV4_EXCEPTION_EVENT_ICMP_HEADER_INCOMPLETE]++;
  si->packets_not_forwarded++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("packet too short for ICMP header\n");
  return 0;
 }




 icmph = (struct icmphdr *)(skb->data + ihl);
 if ((icmph->type != ICMP_DEST_UNREACH)
     && (icmph->type != ICMP_TIME_EXCEEDED)) {
  spin_lock_bh(&si->lock);
  si->exception_events[SFE_IPV4_EXCEPTION_EVENT_ICMP_UNHANDLED_TYPE]++;
  si->packets_not_forwarded++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("unhandled ICMP type: 0x%x\n", icmph->type);
  return 0;
 }




 len -= sizeof(struct icmphdr);
 pull_len += sizeof(struct sfe_ipv4_ip_hdr);
 if (!pskb_may_pull(skb, pull_len)) {
  spin_lock_bh(&si->lock);
  si->exception_events[SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_HEADER_INCOMPLETE]++;
  si->packets_not_forwarded++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("Embedded IP header not complete\n");
  return 0;
 }




 icmp_iph = (struct sfe_ipv4_ip_hdr *)(icmph + 1);
 if (unlikely(icmp_iph->version != 4)) {
  spin_lock_bh(&si->lock);
  si->exception_events[SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_NON_V4]++;
  si->packets_not_forwarded++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("IP version: %u\n", icmp_iph->version);
  return 0;
 }




 icmp_ihl_words = icmp_iph->ihl;
 icmp_ihl = icmp_ihl_words << 2;
 pull_len += icmp_ihl - sizeof(struct sfe_ipv4_ip_hdr);
 if (!pskb_may_pull(skb, pull_len)) {
  spin_lock_bh(&si->lock);
  si->exception_events[SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_IP_OPTIONS_INCOMPLETE]++;
  si->packets_not_forwarded++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("Embedded header not large enough for IP options\n");
  return 0;
 }

 len -= icmp_ihl;
 icmp_trans_h = ((u32 *)icmp_iph) + icmp_ihl_words;




 switch (icmp_iph->protocol) {
 case 128:




  pull_len += 8;
  if (!pskb_may_pull(skb, pull_len)) {
   spin_lock_bh(&si->lock);
   si->exception_events[SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_UDP_HEADER_INCOMPLETE]++;
   si->packets_not_forwarded++;
   spin_unlock_bh(&si->lock);

   DEBUG_TRACE("Incomplete embedded UDP header\n");
   return 0;
  }

  icmp_udph = (struct sfe_ipv4_udp_hdr *)icmp_trans_h;
  src_port = icmp_udph->source;
  dest_port = icmp_udph->dest;
  break;

 case 129:




  pull_len += 8;
  if (!pskb_may_pull(skb, pull_len)) {
   spin_lock_bh(&si->lock);
   si->exception_events[SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_TCP_HEADER_INCOMPLETE]++;
   si->packets_not_forwarded++;
   spin_unlock_bh(&si->lock);

   DEBUG_TRACE("Incomplete embedded TCP header\n");
   return 0;
  }

  icmp_tcph = (struct sfe_ipv4_tcp_hdr *)icmp_trans_h;
  src_port = icmp_tcph->source;
  dest_port = icmp_tcph->dest;
  break;

 default:
  spin_lock_bh(&si->lock);
  si->exception_events[SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_UNHANDLED_PROTOCOL]++;
  si->packets_not_forwarded++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("Unhandled embedded IP protocol: %u\n", icmp_iph->protocol);
  return 0;
 }

 src_ip = icmp_iph->saddr;
 dest_ip = icmp_iph->daddr;

 spin_lock_bh(&si->lock);
 cm = sfe_ipv4_find_sfe_ipv4_connection_match(si, dev, icmp_iph->protocol, dest_ip, dest_port, src_ip, src_port);
 if (unlikely(!cm)) {
  si->exception_events[SFE_IPV4_EXCEPTION_EVENT_ICMP_NO_CONNECTION]++;
  si->packets_not_forwarded++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("no connection found\n");
  return 0;
 }





 c = cm->connection;
 sfe_ipv4_remove_sfe_ipv4_connection(si, c);
 si->exception_events[SFE_IPV4_EXCEPTION_EVENT_ICMP_FLUSHED_CONNECTION]++;
 si->packets_not_forwarded++;
 spin_unlock_bh(&si->lock);

 sfe_ipv4_flush_sfe_ipv4_connection(si, c, SFE_SYNC_REASON_FLUSH);
 return 0;
}
