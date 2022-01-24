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
struct res_opts {int dummy; } ;
struct genl_info {int dummy; } ;
struct drbd_config_context {TYPE_1__* resource; int /*<<< orphan*/  reply_skb; } ;
typedef  enum drbd_ret_code { ____Placeholder_drbd_ret_code } drbd_ret_code ;
struct TYPE_2__ {int /*<<< orphan*/  adm_mutex; struct res_opts res_opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRBD_ADM_NEED_RESOURCE ; 
 int ENOMEM ; 
 int ENOMSG ; 
 int ERR_INVALID_REQUEST ; 
 int ERR_MANDATORY_TAG ; 
 int ERR_NOMEM ; 
 int NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_config_context*,struct genl_info*,int) ; 
 int FUNC1 (struct drbd_config_context*,struct sk_buff*,struct genl_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct res_opts*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct res_opts*) ; 
 int FUNC8 (TYPE_1__*,struct res_opts*) ; 
 scalar_t__ FUNC9 (struct genl_info*) ; 

int FUNC10(struct sk_buff *skb, struct genl_info *info)
{
	struct drbd_config_context adm_ctx;
	enum drbd_ret_code retcode;
	struct res_opts res_opts;
	int err;

	retcode = FUNC1(&adm_ctx, skb, info, DRBD_ADM_NEED_RESOURCE);
	if (!adm_ctx.reply_skb)
		return retcode;
	if (retcode != NO_ERROR)
		goto fail;

	res_opts = adm_ctx.resource->res_opts;
	if (FUNC9(info))
		FUNC7(&res_opts);

	err = FUNC6(&res_opts, info);
	if (err && err != -ENOMSG) {
		retcode = ERR_MANDATORY_TAG;
		FUNC2(adm_ctx.reply_skb, FUNC3(err));
		goto fail;
	}

	FUNC4(&adm_ctx.resource->adm_mutex);
	err = FUNC8(adm_ctx.resource, &res_opts);
	if (err) {
		retcode = ERR_INVALID_REQUEST;
		if (err == -ENOMEM)
			retcode = ERR_NOMEM;
	}
	FUNC5(&adm_ctx.resource->adm_mutex);

fail:
	FUNC0(&adm_ctx, info, retcode);
	return 0;
}