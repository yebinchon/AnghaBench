#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct new_c_uuid_parms {scalar_t__ clear_bm; } ;
struct genl_info {scalar_t__* attrs; } ;
struct TYPE_12__ {scalar_t__ conn; } ;
struct drbd_device {int /*<<< orphan*/ * state_mutex; TYPE_5__* resource; TYPE_4__ state; TYPE_3__* ldev; } ;
struct drbd_config_context {TYPE_6__* resource; int /*<<< orphan*/  reply_skb; struct drbd_device* device; } ;
typedef  enum drbd_ret_code { ____Placeholder_drbd_ret_code } drbd_ret_code ;
typedef  int /*<<< orphan*/  args ;
struct TYPE_15__ {TYPE_1__* connection; } ;
struct TYPE_14__ {int /*<<< orphan*/  adm_mutex; } ;
struct TYPE_13__ {int /*<<< orphan*/  req_lock; } ;
struct TYPE_10__ {scalar_t__* uuid; } ;
struct TYPE_11__ {TYPE_2__ md; } ;
struct TYPE_9__ {int agreed_pro_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  BM_LOCKED_MASK ; 
 int /*<<< orphan*/  CS_VERBOSE ; 
 scalar_t__ C_CONNECTED ; 
 scalar_t__ C_STANDALONE ; 
 int /*<<< orphan*/  DRBD_ADM_NEED_MINOR ; 
 size_t DRBD_NLA_NEW_C_UUID_PARMS ; 
 int /*<<< orphan*/  D_UP_TO_DATE ; 
 int ERR_CONNECTED ; 
 int ERR_IO_MD_DISK ; 
 int ERR_MANDATORY_TAG ; 
 int ERR_NO_DISK ; 
 int NO_ERROR ; 
 int /*<<< orphan*/  UI_BITMAP ; 
 size_t UI_CURRENT ; 
 scalar_t__ UUID_JUST_CREATED ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  disk ; 
 int /*<<< orphan*/  FUNC3 (struct drbd_config_context*,struct genl_info*,int) ; 
 int FUNC4 (struct drbd_config_context*,struct sk_buff*,struct genl_info*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct drbd_device*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drbd_bmio_clear_n_write ; 
 int /*<<< orphan*/  FUNC6 (struct drbd_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drbd_device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct drbd_device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC12 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct drbd_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC14 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct new_c_uuid_parms*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (struct new_c_uuid_parms*,struct genl_info*) ; 
 int /*<<< orphan*/  pdsk ; 
 int /*<<< orphan*/  FUNC21 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

int FUNC24(struct sk_buff *skb, struct genl_info *info)
{
	struct drbd_config_context adm_ctx;
	struct drbd_device *device;
	enum drbd_ret_code retcode;
	int skip_initial_sync = 0;
	int err;
	struct new_c_uuid_parms args;

	retcode = FUNC4(&adm_ctx, skb, info, DRBD_ADM_NEED_MINOR);
	if (!adm_ctx.reply_skb)
		return retcode;
	if (retcode != NO_ERROR)
		goto out_nolock;

	device = adm_ctx.device;
	FUNC17(&args, 0, sizeof(args));
	if (info->attrs[DRBD_NLA_NEW_C_UUID_PARMS]) {
		err = FUNC20(&args, info);
		if (err) {
			retcode = ERR_MANDATORY_TAG;
			FUNC9(adm_ctx.reply_skb, FUNC15(err));
			goto out_nolock;
		}
	}

	FUNC18(&adm_ctx.resource->adm_mutex);
	FUNC18(device->state_mutex); /* Protects us against serialized state changes. */

	if (!FUNC16(device)) {
		retcode = ERR_NO_DISK;
		goto out;
	}

	/* this is "skip initial sync", assume to be clean */
	if (device->state.conn == C_CONNECTED &&
	    FUNC14(device)->connection->agreed_pro_version >= 90 &&
	    device->ldev->md.uuid[UI_CURRENT] == UUID_JUST_CREATED && args.clear_bm) {
		FUNC7(device, "Preparing to skip initial sync\n");
		skip_initial_sync = 1;
	} else if (device->state.conn != C_STANDALONE) {
		retcode = ERR_CONNECTED;
		goto out_dec;
	}

	FUNC13(device, UI_BITMAP, 0); /* Rotate UI_BITMAP to History 1, etc... */
	FUNC12(device); /* New current, previous to UI_BITMAP */

	if (args.clear_bm) {
		err = FUNC5(device, &drbd_bmio_clear_n_write,
			"clear_n_write from new_c_uuid", BM_LOCKED_MASK);
		if (err) {
			FUNC6(device, "Writing bitmap failed with %d\n", err);
			retcode = ERR_IO_MD_DISK;
		}
		if (skip_initial_sync) {
			FUNC11(FUNC14(device));
			FUNC2(device, UI_BITMAP, 0);
			FUNC10(device, "cleared bitmap UUID");
			FUNC22(&device->resource->req_lock);
			FUNC1(FUNC0(device, disk, D_UP_TO_DATE, pdsk, D_UP_TO_DATE),
					CS_VERBOSE, NULL);
			FUNC23(&device->resource->req_lock);
		}
	}

	FUNC8(device);
out_dec:
	FUNC21(device);
out:
	FUNC19(device->state_mutex);
	FUNC19(&adm_ctx.resource->adm_mutex);
out_nolock:
	FUNC3(&adm_ctx, info, retcode);
	return 0;
}