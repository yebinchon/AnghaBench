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
struct drbd_resource {int dummy; } ;
struct drbd_helper_info {int helper_status; int /*<<< orphan*/  helper_name_len; int /*<<< orphan*/  helper_name; } ;
struct drbd_genlmsghdr {int minor; int /*<<< orphan*/  ret_code; } ;
struct drbd_device {int minor; struct drbd_resource* resource; } ;
struct drbd_connection {struct drbd_resource* resource; } ;
typedef  enum drbd_notification_type { ____Placeholder_drbd_notification_type } drbd_notification_type ;

/* Variables and functions */
 int /*<<< orphan*/  DRBD_HELPER ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int ESRCH ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 int /*<<< orphan*/  NO_ERROR ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_resource*,char*,int,unsigned int) ; 
 int /*<<< orphan*/  drbd_genl_family ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,struct drbd_helper_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct drbd_genlmsghdr*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drbd_genlmsghdr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct sk_buff*,struct drbd_resource*,struct drbd_connection*,struct drbd_device*) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  notification_mutex ; 
 int /*<<< orphan*/  notify_genl_seq ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 

void FUNC15(enum drbd_notification_type type,
		   struct drbd_device *device, struct drbd_connection *connection,
		   const char *name, int status)
{
	struct drbd_resource *resource = device ? device->resource : connection->resource;
	struct drbd_helper_info helper_info;
	unsigned int seq = FUNC0(&notify_genl_seq);
	struct sk_buff *skb = NULL;
	struct drbd_genlmsghdr *dh;
	int err;

	FUNC13(helper_info.helper_name, name, sizeof(helper_info.helper_name));
	helper_info.helper_name_len = FUNC7(FUNC14(name), sizeof(helper_info.helper_name));
	helper_info.helper_status = status;

	skb = FUNC5(NLMSG_GOODSIZE, GFP_NOIO);
	err = -ENOMEM;
	if (!skb)
		goto fail;

	err = -EMSGSIZE;
	dh = FUNC6(skb, 0, seq, &drbd_genl_family, 0, DRBD_HELPER);
	if (!dh)
		goto fail;
	dh->minor = device ? device->minor : -1;
	dh->ret_code = NO_ERROR;
	FUNC8(&notification_mutex);
	if (FUNC10(skb, resource, connection, device) ||
	    FUNC11(skb, type) ||
	    FUNC3(skb, &helper_info, true))
		goto unlock_fail;
	FUNC4(skb, dh);
	err = FUNC2(skb, GFP_NOWAIT);
	skb = NULL;
	/* skb has been consumed or freed in netlink_broadcast() */
	if (err && err != -ESRCH)
		goto unlock_fail;
	FUNC9(&notification_mutex);
	return;

unlock_fail:
	FUNC9(&notification_mutex);
fail:
	FUNC12(skb);
	FUNC1(resource, "Error %d while broadcasting event. Event seq:%u\n",
		 err, seq);
}