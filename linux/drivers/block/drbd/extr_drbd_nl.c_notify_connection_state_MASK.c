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
struct drbd_connection {int /*<<< orphan*/  flags; int /*<<< orphan*/  resource; } ;
struct connection_statistics {int /*<<< orphan*/  conn_congested; } ;
struct connection_info {int dummy; } ;
typedef  enum drbd_notification_type { ____Placeholder_drbd_notification_type } drbd_notification_type ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  DRBD_CONNECTION_STATE ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int ESRCH ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  NET_CONGESTED ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int NOTIFY_DESTROY ; 
 int NOTIFY_FLAGS ; 
 int /*<<< orphan*/  NO_ERROR ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct connection_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct connection_statistics*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drbd_connection*,char*,int,unsigned int) ; 
 int /*<<< orphan*/  drbd_genl_family ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct drbd_genlmsghdr*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drbd_genlmsghdr* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,struct drbd_connection*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  notify_genl_seq ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC13(struct sk_buff *skb,
			     unsigned int seq,
			     struct drbd_connection *connection,
			     struct connection_info *connection_info,
			     enum drbd_notification_type type)
{
	struct connection_statistics connection_statistics;
	struct drbd_genlmsghdr *dh;
	bool multicast = false;
	int err;

	if (!skb) {
		seq = FUNC0(&notify_genl_seq);
		skb = FUNC7(NLMSG_GOODSIZE, GFP_NOIO);
		err = -ENOMEM;
		if (!skb)
			goto failed;
		multicast = true;
	}

	err = -EMSGSIZE;
	dh = FUNC8(skb, 0, seq, &drbd_genl_family, 0, DRBD_CONNECTION_STATE);
	if (!dh)
		goto nla_put_failure;
	dh->minor = -1U;
	dh->ret_code = NO_ERROR;
	if (FUNC9(skb, connection->resource, connection, NULL) ||
	    FUNC10(skb, type) ||
	    ((type & ~NOTIFY_FLAGS) != NOTIFY_DESTROY &&
	     FUNC2(skb, connection_info, true)))
		goto nla_put_failure;
	connection_statistics.conn_congested = FUNC12(NET_CONGESTED, &connection->flags);
	FUNC3(skb, &connection_statistics, !FUNC1(CAP_SYS_ADMIN));
	FUNC6(skb, dh);
	if (multicast) {
		err = FUNC5(skb, GFP_NOWAIT);
		/* skb has been consumed or freed in netlink_broadcast() */
		if (err && err != -ESRCH)
			goto failed;
	}
	return;

nla_put_failure:
	FUNC11(skb);
failed:
	FUNC4(connection, "Error %d while broadcasting event. Event seq:%u\n",
		 err, seq);
}