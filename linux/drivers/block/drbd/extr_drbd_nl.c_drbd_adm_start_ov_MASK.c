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
struct start_ov_parms {int ov_start_sector; int /*<<< orphan*/  ov_stop_sector; } ;
struct sk_buff {int dummy; } ;
struct genl_info {scalar_t__* attrs; } ;
struct drbd_device {int ov_start_sector; int /*<<< orphan*/  flags; int /*<<< orphan*/  misc_wait; int /*<<< orphan*/  ov_stop_sector; } ;
struct drbd_config_context {TYPE_1__* resource; int /*<<< orphan*/  reply_skb; struct drbd_device* device; } ;
typedef  enum drbd_ret_code { ____Placeholder_drbd_ret_code } drbd_ret_code ;
struct TYPE_2__ {int /*<<< orphan*/  adm_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP_IO ; 
 int BM_SECT_PER_BIT ; 
 int /*<<< orphan*/  C_VERIFY_S ; 
 int /*<<< orphan*/  DRBD_ADM_NEED_MINOR ; 
 size_t DRBD_NLA_START_OV_PARMS ; 
 int ERR_MANDATORY_TAG ; 
 int NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ULLONG_MAX ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_config_context*,struct genl_info*,int) ; 
 int FUNC2 (struct drbd_config_context*,struct sk_buff*,struct genl_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drbd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct start_ov_parms*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

int FUNC13(struct sk_buff *skb, struct genl_info *info)
{
	struct drbd_config_context adm_ctx;
	struct drbd_device *device;
	enum drbd_ret_code retcode;
	struct start_ov_parms parms;

	retcode = FUNC2(&adm_ctx, skb, info, DRBD_ADM_NEED_MINOR);
	if (!adm_ctx.reply_skb)
		return retcode;
	if (retcode != NO_ERROR)
		goto out;

	device = adm_ctx.device;

	/* resume from last known position, if possible */
	parms.ov_start_sector = device->ov_start_sector;
	parms.ov_stop_sector = ULLONG_MAX;
	if (info->attrs[DRBD_NLA_START_OV_PARMS]) {
		int err = FUNC10(&parms, info);
		if (err) {
			retcode = ERR_MANDATORY_TAG;
			FUNC3(adm_ctx.reply_skb, FUNC7(err));
			goto out;
		}
	}
	FUNC8(&adm_ctx.resource->adm_mutex);

	/* w_make_ov_request expects position to be aligned */
	device->ov_start_sector = parms.ov_start_sector & ~(BM_SECT_PER_BIT-1);
	device->ov_stop_sector = parms.ov_stop_sector;

	/* If there is still bitmap IO pending, e.g. previous resync or verify
	 * just being finished, wait for it before requesting a new resync. */
	FUNC6(device);
	FUNC12(device->misc_wait, !FUNC11(BITMAP_IO, &device->flags));
	retcode = FUNC4(device, FUNC0(conn, C_VERIFY_S));
	FUNC5(device);

	FUNC9(&adm_ctx.resource->adm_mutex);
out:
	FUNC1(&adm_ctx, info, retcode);
	return 0;
}