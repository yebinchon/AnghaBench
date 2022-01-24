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
struct genl_info {int dummy; } ;
struct drbd_resource {int /*<<< orphan*/  adm_mutex; } ;
struct drbd_config_context {struct drbd_resource* resource; int /*<<< orphan*/  reply_skb; } ;
typedef  enum drbd_ret_code { ____Placeholder_drbd_ret_code } drbd_ret_code ;

/* Variables and functions */
 int /*<<< orphan*/  DRBD_ADM_NEED_RESOURCE ; 
 int NO_ERROR ; 
 int FUNC0 (struct drbd_resource*) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_config_context*,struct genl_info*,int) ; 
 int FUNC2 (struct drbd_config_context*,struct sk_buff*,struct genl_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct sk_buff *skb, struct genl_info *info)
{
	struct drbd_config_context adm_ctx;
	struct drbd_resource *resource;
	enum drbd_ret_code retcode;

	retcode = FUNC2(&adm_ctx, skb, info, DRBD_ADM_NEED_RESOURCE);
	if (!adm_ctx.reply_skb)
		return retcode;
	if (retcode != NO_ERROR)
		goto finish;
	resource = adm_ctx.resource;

	FUNC3(&resource->adm_mutex);
	retcode = FUNC0(resource);
	FUNC4(&resource->adm_mutex);
finish:
	FUNC1(&adm_ctx, info, retcode);
	return 0;
}