#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;
struct drbd_config_context {TYPE_1__* resource; int /*<<< orphan*/  device; int /*<<< orphan*/  reply_skb; } ;
typedef  enum drbd_ret_code { ____Placeholder_drbd_ret_code } drbd_ret_code ;
struct TYPE_2__ {int /*<<< orphan*/  adm_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRBD_ADM_NEED_MINOR ; 
 int NO_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_config_context*,struct genl_info*,int) ; 
 int FUNC2 (struct drbd_config_context*,struct sk_buff*,struct genl_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct sk_buff *skb, struct genl_info *info)
{
	struct drbd_config_context adm_ctx;
	enum drbd_ret_code retcode;

	retcode = FUNC2(&adm_ctx, skb, info, DRBD_ADM_NEED_MINOR);
	if (!adm_ctx.reply_skb)
		return retcode;
	if (retcode != NO_ERROR)
		goto out;

	FUNC3(&adm_ctx.resource->adm_mutex);
	retcode = FUNC0(adm_ctx.device);
	FUNC4(&adm_ctx.resource->adm_mutex);
out:
	FUNC1(&adm_ctx, info, retcode);
	return 0;
}