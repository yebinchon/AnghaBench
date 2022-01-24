#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct sfe_ipv6_udp_hdr {int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;
struct sfe_ipv6_tcp_hdr {int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;
struct sfe_ipv6_addr {int dummy; } ;
struct sfe_ipv6_ip_hdr {int version; int nexthdr; struct sfe_ipv6_addr daddr; struct sfe_ipv6_addr saddr; } ;
struct sfe_ipv6_frag_hdr {int /*<<< orphan*/  frag_off; } ;
struct sfe_ipv6_ext_hdr {unsigned int hdr_len; int next_hdr; } ;
struct sfe_ipv6_connection_match {struct sfe_ipv6_connection* connection; } ;
struct sfe_ipv6_connection {int dummy; } ;
struct sfe_ipv6 {int /*<<< orphan*/  lock; int /*<<< orphan*/  packets_not_forwarded; int /*<<< orphan*/ * exception_events; } ;
struct net_device {int dummy; } ;
struct icmp6hdr {scalar_t__ icmp6_type; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ ICMPV6_DEST_UNREACH ; 
 scalar_t__ ICMPV6_TIME_EXCEED ; 
#define  IPPROTO_TCP 129 
#define  IPPROTO_UDP 128 
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
 int /*<<< orphan*/  SFE_SYNC_REASON_FLUSH ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 
 struct sfe_ipv6_connection_match* FUNC3 (struct sfe_ipv6*,struct net_device*,int,struct sfe_ipv6_addr*,int /*<<< orphan*/ ,struct sfe_ipv6_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sfe_ipv6*,struct sfe_ipv6_connection*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct sfe_ipv6*,struct sfe_ipv6_connection*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct sfe_ipv6 *si, struct sk_buff *skb, struct net_device *dev,
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

	/*
	 * Is our packet too short to contain a valid ICMP header?
	 */
	len -= ihl;
	if (!FUNC2(skb, ihl + sizeof(struct icmp6hdr))) {
		FUNC7(&si->lock);
		si->exception_events[SFE_IPV6_EXCEPTION_EVENT_ICMP_HEADER_INCOMPLETE]++;
		si->packets_not_forwarded++;
		FUNC8(&si->lock);

		FUNC0("packet too short for ICMP header\n");
		return 0;
	}

	/*
	 * We only handle "destination unreachable" and "time exceeded" messages.
	 */
	icmph = (struct icmp6hdr *)(skb->data + ihl);
	if ((icmph->icmp6_type != ICMPV6_DEST_UNREACH)
	    && (icmph->icmp6_type != ICMPV6_TIME_EXCEED)) {
		FUNC7(&si->lock);
		si->exception_events[SFE_IPV6_EXCEPTION_EVENT_ICMP_UNHANDLED_TYPE]++;
		si->packets_not_forwarded++;
		FUNC8(&si->lock);

		FUNC0("unhandled ICMP type: 0x%x\n", icmph->icmp6_type);
		return 0;
	}

	/*
	 * Do we have the full embedded IP header?
	 * We should have 8 bytes of next L4 header - that's enough to identify
	 * the connection.
	 */
	len -= sizeof(struct icmp6hdr);
	ihl += sizeof(struct icmp6hdr);
	if (!FUNC2(skb, ihl + sizeof(struct sfe_ipv6_ip_hdr) + sizeof(struct sfe_ipv6_ext_hdr))) {
		FUNC7(&si->lock);
		si->exception_events[SFE_IPV6_EXCEPTION_EVENT_ICMP_IPV6_HEADER_INCOMPLETE]++;
		si->packets_not_forwarded++;
		FUNC8(&si->lock);

		FUNC0("Embedded IP header not complete\n");
		return 0;
	}

	/*
	 * Is our embedded IP version wrong?
	 */
	icmp_iph = (struct sfe_ipv6_ip_hdr *)(icmph + 1);
	if (FUNC9(icmp_iph->version != 6)) {
		FUNC7(&si->lock);
		si->exception_events[SFE_IPV6_EXCEPTION_EVENT_ICMP_IPV6_NON_V6]++;
		si->packets_not_forwarded++;
		FUNC8(&si->lock);

		FUNC0("IP version: %u\n", icmp_iph->version);
		return 0;
	}

	len -= sizeof(struct sfe_ipv6_ip_hdr);
	ihl += sizeof(struct sfe_ipv6_ip_hdr);
	next_hdr = icmp_iph->nexthdr;
	while (FUNC9(FUNC5(next_hdr))) {
		struct sfe_ipv6_ext_hdr *ext_hdr;
		unsigned int ext_hdr_len;

		ext_hdr = (struct sfe_ipv6_ext_hdr *)(skb->data + ihl);
		if (next_hdr == SFE_IPV6_EXT_HDR_FRAG) {
			struct sfe_ipv6_frag_hdr *frag_hdr = (struct sfe_ipv6_frag_hdr *)ext_hdr;
			unsigned int frag_off = FUNC1(frag_hdr->frag_off);

			if (frag_off & SFE_IPV6_FRAG_OFFSET) {
				FUNC7(&si->lock);
				si->exception_events[SFE_IPV6_EXCEPTION_EVENT_NON_INITIAL_FRAGMENT]++;
				si->packets_not_forwarded++;
				FUNC8(&si->lock);

				FUNC0("non-initial fragment\n");
				return 0;
			}
		}

		ext_hdr_len = ext_hdr->hdr_len;
		ext_hdr_len <<= 3;
		ext_hdr_len += sizeof(struct sfe_ipv6_ext_hdr);
		len -= ext_hdr_len;
		ihl += ext_hdr_len;
		/*
		 * We should have 8 bytes of next header - that's enough to identify
		 * the connection.
		 */
		if (!FUNC2(skb, ihl + sizeof(struct sfe_ipv6_ext_hdr))) {
			FUNC7(&si->lock);
			si->exception_events[SFE_IPV6_EXCEPTION_EVENT_HEADER_INCOMPLETE]++;
			si->packets_not_forwarded++;
			FUNC8(&si->lock);

			FUNC0("extension header %d not completed\n", next_hdr);
			return 0;
		}

		next_hdr = ext_hdr->next_hdr;
	}

	/*
	 * Handle the embedded transport layer header.
	 */
	switch (next_hdr) {
	case IPPROTO_UDP:
		icmp_udph = (struct sfe_ipv6_udp_hdr *)(skb->data + ihl);
		src_port = icmp_udph->source;
		dest_port = icmp_udph->dest;
		break;

	case IPPROTO_TCP:
		icmp_tcph = (struct sfe_ipv6_tcp_hdr *)(skb->data + ihl);
		src_port = icmp_tcph->source;
		dest_port = icmp_tcph->dest;
		break;

	default:
		FUNC7(&si->lock);
		si->exception_events[SFE_IPV6_EXCEPTION_EVENT_ICMP_IPV6_UNHANDLED_PROTOCOL]++;
		si->packets_not_forwarded++;
		FUNC8(&si->lock);

		FUNC0("Unhandled embedded IP protocol: %u\n", next_hdr);
		return 0;
	}

	src_ip = &icmp_iph->saddr;
	dest_ip = &icmp_iph->daddr;

	FUNC7(&si->lock);

	/*
	 * Look for a connection match.  Note that we reverse the source and destination
	 * here because our embedded message contains a packet that was sent in the
	 * opposite direction to the one in which we just received it.  It will have
	 * been sent on the interface from which we received it though so that's still
	 * ok to use.
	 */
	cm = FUNC3(si, dev, icmp_iph->nexthdr, dest_ip, dest_port, src_ip, src_port);
	if (FUNC9(!cm)) {
		si->exception_events[SFE_IPV6_EXCEPTION_EVENT_ICMP_NO_CONNECTION]++;
		si->packets_not_forwarded++;
		FUNC8(&si->lock);

		FUNC0("no connection found\n");
		return 0;
	}

	/*
	 * We found a connection so now remove it from the connection list and flush
	 * its state.
	 */
	c = cm->connection;
	FUNC6(si, c);
	si->exception_events[SFE_IPV6_EXCEPTION_EVENT_ICMP_FLUSHED_CONNECTION]++;
	si->packets_not_forwarded++;
	FUNC8(&si->lock);

	FUNC4(si, c, SFE_SYNC_REASON_FLUSH);
	return 0;
}