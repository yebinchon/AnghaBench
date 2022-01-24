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
struct genl_info {scalar_t__* attrs; } ;
struct drbd_connection {int dummy; } ;
struct drbd_config_context {TYPE_1__* resource; int /*<<< orphan*/  reply_skb; struct drbd_connection* connection; } ;
struct disconnect_parms {int /*<<< orphan*/  force_disconnect; } ;
typedef  int /*<<< orphan*/  parms ;
typedef  enum drbd_state_rv { ____Placeholder_drbd_state_rv } drbd_state_rv ;
typedef  enum drbd_ret_code { ____Placeholder_drbd_ret_code } drbd_ret_code ;
struct TYPE_2__ {int /*<<< orphan*/  adm_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRBD_ADM_NEED_CONNECTION ; 
 size_t DRBD_NLA_DISCONNECT_PARMS ; 
 int ERR_MANDATORY_TAG ; 
 int NO_ERROR ; 
 int SS_SUCCESS ; 
 int FUNC0 (struct drbd_connection*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct disconnect_parms*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_config_context*,struct genl_info*,int) ; 
 int FUNC3 (struct drbd_config_context*,struct sk_buff*,struct genl_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct disconnect_parms*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct sk_buff *skb, struct genl_info *info)
{
	struct drbd_config_context adm_ctx;
	struct disconnect_parms parms;
	struct drbd_connection *connection;
	enum drbd_state_rv rv;
	enum drbd_ret_code retcode;
	int err;

	retcode = FUNC3(&adm_ctx, skb, info, DRBD_ADM_NEED_CONNECTION);
	if (!adm_ctx.reply_skb)
		return retcode;
	if (retcode != NO_ERROR)
		goto fail;

	connection = adm_ctx.connection;
	FUNC6(&parms, 0, sizeof(parms));
	if (info->attrs[DRBD_NLA_DISCONNECT_PARMS]) {
		err = FUNC1(&parms, info);
		if (err) {
			retcode = ERR_MANDATORY_TAG;
			FUNC4(adm_ctx.reply_skb, FUNC5(err));
			goto fail;
		}
	}

	FUNC7(&adm_ctx.resource->adm_mutex);
	rv = FUNC0(connection, parms.force_disconnect);
	if (rv < SS_SUCCESS)
		retcode = rv;  /* FIXME: Type mismatch. */
	else
		retcode = NO_ERROR;
	FUNC8(&adm_ctx.resource->adm_mutex);
 fail:
	FUNC2(&adm_ctx, info, retcode);
	return 0;
}