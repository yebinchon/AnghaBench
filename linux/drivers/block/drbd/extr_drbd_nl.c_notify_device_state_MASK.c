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
struct drbd_genlmsghdr {int /*<<< orphan*/  ret_code; int /*<<< orphan*/  minor; } ;
struct drbd_device {int /*<<< orphan*/  resource; int /*<<< orphan*/  minor; } ;
struct device_statistics {int dummy; } ;
struct device_info {int dummy; } ;
typedef  enum drbd_notification_type { ____Placeholder_drbd_notification_type } drbd_notification_type ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  DRBD_DEVICE_STATE ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int ESRCH ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int NOTIFY_DESTROY ; 
 int NOTIFY_FLAGS ; 
 int /*<<< orphan*/  NO_ERROR ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct device_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct device_statistics*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device_statistics*,struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drbd_device*,char*,int,unsigned int) ; 
 int /*<<< orphan*/  drbd_genl_family ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct drbd_genlmsghdr*) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drbd_genlmsghdr* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct drbd_device*) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  notify_genl_seq ; 

void FUNC13(struct sk_buff *skb,
			 unsigned int seq,
			 struct drbd_device *device,
			 struct device_info *device_info,
			 enum drbd_notification_type type)
{
	struct device_statistics device_statistics;
	struct drbd_genlmsghdr *dh;
	bool multicast = false;
	int err;

	if (!skb) {
		seq = FUNC0(&notify_genl_seq);
		skb = FUNC8(NLMSG_GOODSIZE, GFP_NOIO);
		err = -ENOMEM;
		if (!skb)
			goto failed;
		multicast = true;
	}

	err = -EMSGSIZE;
	dh = FUNC9(skb, 0, seq, &drbd_genl_family, 0, DRBD_DEVICE_STATE);
	if (!dh)
		goto nla_put_failure;
	dh->minor = device->minor;
	dh->ret_code = NO_ERROR;
	if (FUNC10(skb, device->resource, NULL, device) ||
	    FUNC11(skb, type) ||
	    ((type & ~NOTIFY_FLAGS) != NOTIFY_DESTROY &&
	     FUNC2(skb, device_info, true)))
		goto nla_put_failure;
	FUNC4(&device_statistics, device);
	FUNC3(skb, &device_statistics, !FUNC1(CAP_SYS_ADMIN));
	FUNC7(skb, dh);
	if (multicast) {
		err = FUNC6(skb, GFP_NOWAIT);
		/* skb has been consumed or freed in netlink_broadcast() */
		if (err && err != -ESRCH)
			goto failed;
	}
	return;

nla_put_failure:
	FUNC12(skb);
failed:
	FUNC5(device, "Error %d while broadcasting event. Event seq:%u\n",
		 err, seq);
}