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
struct sk_buff {scalar_t__ len; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct cn_msg {int dummy; } ;

/* Variables and functions */
 int CONNECTOR_MAX_MSG_SIZE ; 
 scalar_t__ NLMSG_HDRLEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct nlmsghdr* FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(struct sk_buff *skb)
{
	struct nlmsghdr *nlh;
	int len, err;

	if (skb->len >= NLMSG_HDRLEN) {
		nlh = FUNC2(skb);
		len = FUNC3(nlh);

		if (len < (int)sizeof(struct cn_msg) ||
		    skb->len < nlh->nlmsg_len ||
		    len > CONNECTOR_MAX_MSG_SIZE)
			return;

		err = FUNC0(FUNC4(skb));
		if (err < 0)
			FUNC1(skb);
	}
}