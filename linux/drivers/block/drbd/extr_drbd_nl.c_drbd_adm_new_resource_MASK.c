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
struct resource_info {int dummy; } ;
struct res_opts {int dummy; } ;
struct genl_info {TYPE_1__* nlhdr; } ;
struct drbd_connection {int /*<<< orphan*/  resource; } ;
struct drbd_config_context {int /*<<< orphan*/  resource_name; int /*<<< orphan*/  reply_skb; scalar_t__ resource; } ;
typedef  enum drbd_ret_code { ____Placeholder_drbd_ret_code } drbd_ret_code ;
struct TYPE_2__ {int nlmsg_flags; } ;

/* Variables and functions */
 int ENOMSG ; 
 int ERR_INVALID_REQUEST ; 
 int ERR_MANDATORY_TAG ; 
 int ERR_NOMEM ; 
 int NLM_F_EXCL ; 
 int /*<<< orphan*/  NOTIFY_CREATE ; 
 int NO_ERROR ; 
 struct drbd_connection* FUNC0 (int /*<<< orphan*/ ,struct res_opts*) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_config_context*,struct genl_info*,int) ; 
 int FUNC2 (struct drbd_config_context*,struct sk_buff*,struct genl_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drbd_config_context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  notification_mutex ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource_info*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct res_opts*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct resource_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  resources_mutex ; 
 int /*<<< orphan*/  FUNC11 (struct res_opts*) ; 

int FUNC12(struct sk_buff *skb, struct genl_info *info)
{
	struct drbd_connection *connection;
	struct drbd_config_context adm_ctx;
	enum drbd_ret_code retcode;
	struct res_opts res_opts;
	int err;

	retcode = FUNC2(&adm_ctx, skb, info, 0);
	if (!adm_ctx.reply_skb)
		return retcode;
	if (retcode != NO_ERROR)
		goto out;

	FUNC11(&res_opts);
	err = FUNC9(&res_opts, info);
	if (err && err != -ENOMSG) {
		retcode = ERR_MANDATORY_TAG;
		FUNC4(adm_ctx.reply_skb, FUNC5(err));
		goto out;
	}

	retcode = FUNC3(&adm_ctx);
	if (retcode != NO_ERROR)
		goto out;

	if (adm_ctx.resource) {
		if (info->nlhdr->nlmsg_flags & NLM_F_EXCL) {
			retcode = ERR_INVALID_REQUEST;
			FUNC4(adm_ctx.reply_skb, "resource exists");
		}
		/* else: still NO_ERROR */
		goto out;
	}

	/* not yet safe for genl_family.parallel_ops */
	FUNC6(&resources_mutex);
	connection = FUNC0(adm_ctx.resource_name, &res_opts);
	FUNC7(&resources_mutex);

	if (connection) {
		struct resource_info resource_info;

		FUNC6(&notification_mutex);
		FUNC10(&resource_info, connection->resource);
		FUNC8(NULL, 0, connection->resource,
				      &resource_info, NOTIFY_CREATE);
		FUNC7(&notification_mutex);
	} else
		retcode = ERR_NOMEM;

out:
	FUNC1(&adm_ctx, info, retcode);
	return 0;
}