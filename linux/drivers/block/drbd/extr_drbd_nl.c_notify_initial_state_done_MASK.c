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
struct sk_buff {int dummy; } ;
struct drbd_genlmsghdr {unsigned int minor; int /*<<< orphan*/  ret_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRBD_INITIAL_STATE_DONE ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  NOTIFY_EXISTS ; 
 int /*<<< orphan*/  NO_ERROR ; 
 int /*<<< orphan*/  drbd_genl_family ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct drbd_genlmsghdr*) ; 
 struct drbd_genlmsghdr* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct sk_buff *skb, unsigned int seq)
{
	struct drbd_genlmsghdr *dh;
	int err;

	err = -EMSGSIZE;
	dh = FUNC1(skb, 0, seq, &drbd_genl_family, 0, DRBD_INITIAL_STATE_DONE);
	if (!dh)
		goto nla_put_failure;
	dh->minor = -1U;
	dh->ret_code = NO_ERROR;
	if (FUNC2(skb, NOTIFY_EXISTS))
		goto nla_put_failure;
	FUNC0(skb, dh);
	return;

nla_put_failure:
	FUNC3(skb);
	FUNC4("Error %d sending event. Event seq:%u\n", err, seq);
}