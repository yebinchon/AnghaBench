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
typedef  int /*<<< orphan*/  u8 ;
typedef  unsigned int u32 ;
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct sfe_ipv4_ip_hdr {int version; int ihl; unsigned int protocol; int /*<<< orphan*/  frag_off; int /*<<< orphan*/  tot_len; } ;
struct sfe_ipv4 {int /*<<< orphan*/  lock; int /*<<< orphan*/  packets_not_forwarded; int /*<<< orphan*/ * exception_events; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
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
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int FUNC4 (struct sfe_ipv4*,struct sk_buff*,struct net_device*,unsigned int,struct sfe_ipv4_ip_hdr*,unsigned int) ; 
 int FUNC5 (struct sfe_ipv4*,struct sk_buff*,struct net_device*,unsigned int,struct sfe_ipv4_ip_hdr*,unsigned int,int) ; 
 int FUNC6 (struct sfe_ipv4*,struct sk_buff*,struct net_device*,unsigned int,struct sfe_ipv4_ip_hdr*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

int FUNC10(struct net_device *dev, struct sk_buff *skb)
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

	/*
	 * Check that we have space for an IP header here.
	 */
	len = skb->len;
	if (FUNC9(!FUNC3(skb, sizeof(struct sfe_ipv4_ip_hdr)))) {
		FUNC7(&si->lock);
		si->exception_events[SFE_IPV4_EXCEPTION_EVENT_HEADER_INCOMPLETE]++;
		si->packets_not_forwarded++;
		FUNC8(&si->lock);

		FUNC0("len: %u is too short\n", len);
		return 0;
	}

	/*
	 * Check that our "total length" is large enough for an IP header.
	 */
	iph = (struct sfe_ipv4_ip_hdr *)skb->data;
	tot_len = FUNC2(iph->tot_len);
	if (FUNC9(tot_len < sizeof(struct sfe_ipv4_ip_hdr))) {
		FUNC7(&si->lock);
		si->exception_events[SFE_IPV4_EXCEPTION_EVENT_BAD_TOTAL_LENGTH]++;
		si->packets_not_forwarded++;
		FUNC8(&si->lock);

		FUNC0("tot_len: %u is too short\n", tot_len);
		return 0;
	}

	/*
	 * Is our IP version wrong?
	 */
	if (FUNC9(iph->version != 4)) {
		FUNC7(&si->lock);
		si->exception_events[SFE_IPV4_EXCEPTION_EVENT_NON_V4]++;
		si->packets_not_forwarded++;
		FUNC8(&si->lock);

		FUNC0("IP version: %u\n", iph->version);
		return 0;
	}

	/*
	 * Does our datagram fit inside the skb?
	 */
	if (FUNC9(tot_len > len)) {
		FUNC7(&si->lock);
		si->exception_events[SFE_IPV4_EXCEPTION_EVENT_DATAGRAM_INCOMPLETE]++;
		si->packets_not_forwarded++;
		FUNC8(&si->lock);

		FUNC0("tot_len: %u, exceeds len: %u\n", tot_len, len);
		return 0;
	}

	/*
	 * Do we have a non-initial fragment?
	 */
	frag_off = FUNC2(iph->frag_off);
	if (FUNC9(frag_off & IP_OFFSET)) {
		FUNC7(&si->lock);
		si->exception_events[SFE_IPV4_EXCEPTION_EVENT_NON_INITIAL_FRAGMENT]++;
		si->packets_not_forwarded++;
		FUNC8(&si->lock);

		FUNC0("non-initial fragment\n");
		return 0;
	}

	/*
	 * If we have a (first) fragment then mark it to cause any connection to flush.
	 */
	flush_on_find = FUNC9(frag_off & IP_MF) ? true : false;

	/*
	 * Do we have any IP options?  That's definite a slow path!  If we do have IP
	 * options we need to recheck our header size.
	 */
	ihl = iph->ihl << 2;
	ip_options = FUNC9(ihl != sizeof(struct sfe_ipv4_ip_hdr)) ? true : false;
	if (FUNC9(ip_options)) {
		if (FUNC9(len < ihl)) {
			FUNC7(&si->lock);
			si->exception_events[SFE_IPV4_EXCEPTION_EVENT_IP_OPTIONS_INCOMPLETE]++;
			si->packets_not_forwarded++;
			FUNC8(&si->lock);

			FUNC0("len: %u is too short for header of size: %u\n", len, ihl);
			return 0;
		}

		flush_on_find = true;
	}

	if (FUNC9(FUNC1((u8 *)iph, iph->ihl))) {
		FUNC7(&si->lock);
		si->exception_events[SFE_IPV4_EXCEPTION_EVENT_CSUM_ERROR]++;
		si->packets_not_forwarded++;
		FUNC8(&si->lock);

		FUNC0("checksum of ipv4 header is invalid\n");
		return 0;
	}

	protocol = iph->protocol;
	if (IPPROTO_UDP == protocol) {
		return FUNC6(si, skb, dev, len, iph, ihl, flush_on_find);
	}

	if (IPPROTO_TCP == protocol) {
		return FUNC5(si, skb, dev, len, iph, ihl, flush_on_find);
	}

	if (IPPROTO_ICMP == protocol) {
		return FUNC4(si, skb, dev, len, iph, ihl);
	}

	FUNC7(&si->lock);
	si->exception_events[SFE_IPV4_EXCEPTION_EVENT_UNHANDLED_PROTOCOL]++;
	si->packets_not_forwarded++;
	FUNC8(&si->lock);

	FUNC0("not UDP, TCP or ICMP: %u\n", protocol);
	return 0;
}