#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct resize_parms {int al_stripes; int al_stripe_size; scalar_t__ no_resync; scalar_t__ resize_force; scalar_t__ resize_size; } ;
struct genl_info {scalar_t__* attrs; } ;
struct TYPE_15__ {scalar_t__ conn; scalar_t__ role; scalar_t__ peer; } ;
struct drbd_device {int /*<<< orphan*/  flags; TYPE_5__ state; TYPE_4__* resource; TYPE_3__* ldev; } ;
struct drbd_config_context {TYPE_6__* resource; int /*<<< orphan*/  reply_skb; struct drbd_device* device; } ;
struct disk_conf {scalar_t__ disk_size; } ;
typedef  scalar_t__ sector_t ;
typedef  enum drbd_ret_code { ____Placeholder_drbd_ret_code } drbd_ret_code ;
typedef  enum determine_dev_size { ____Placeholder_determine_dev_size } determine_dev_size ;
typedef  enum dds_flags { ____Placeholder_dds_flags } dds_flags ;
struct TYPE_18__ {TYPE_1__* connection; } ;
struct TYPE_17__ {scalar_t__ disk_size; } ;
struct TYPE_16__ {int /*<<< orphan*/  adm_mutex; } ;
struct TYPE_14__ {int /*<<< orphan*/  conf_update; } ;
struct TYPE_12__ {int al_stripes; int al_stripe_size_4k; } ;
struct TYPE_13__ {scalar_t__ known_size; struct disk_conf* disk_conf; int /*<<< orphan*/  backing_bdev; TYPE_2__ md; } ;
struct TYPE_11__ {int agreed_pro_version; } ;

/* Variables and functions */
 scalar_t__ C_CONNECTED ; 
 int DDSF_FORCED ; 
 int DDSF_NO_RESYNC ; 
 int /*<<< orphan*/  DRBD_ADM_NEED_MINOR ; 
 size_t DRBD_NLA_RESIZE_PARMS ; 
 int DS_ERROR ; 
 int DS_ERROR_SHRINK ; 
 int DS_ERROR_SPACE_MD ; 
 int DS_GREW ; 
 int ERR_IMPLICIT_SHRINK ; 
 int ERR_MANDATORY_TAG ; 
 int ERR_MD_LAYOUT_CONNECTED ; 
 int ERR_MD_LAYOUT_NO_FIT ; 
 int ERR_MD_LAYOUT_TOO_BIG ; 
 int ERR_MD_LAYOUT_TOO_SMALL ; 
 int ERR_NEED_APV_93 ; 
 int ERR_NOMEM ; 
 int ERR_NOMEM_BITMAP ; 
 int ERR_NO_DISK ; 
 int ERR_NO_PRIMARY ; 
 int ERR_RESIZE_RESYNC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MD_32kB_SECT ; 
 int NO_ERROR ; 
 int /*<<< orphan*/  RESIZE_PENDING ; 
 scalar_t__ R_SECONDARY ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_config_context*,struct genl_info*,int) ; 
 int FUNC1 (struct drbd_config_context*,struct sk_buff*,struct genl_info*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drbd_device*,int,struct resize_parms*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*) ; 
 TYPE_8__* FUNC8 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct disk_conf*) ; 
 struct disk_conf* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct resize_parms*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct disk_conf*,struct disk_conf*) ; 
 TYPE_7__* FUNC18 (struct disk_conf*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int FUNC21 (struct resize_parms*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 () ; 

int FUNC24(struct sk_buff *skb, struct genl_info *info)
{
	struct drbd_config_context adm_ctx;
	struct disk_conf *old_disk_conf, *new_disk_conf = NULL;
	struct resize_parms rs;
	struct drbd_device *device;
	enum drbd_ret_code retcode;
	enum determine_dev_size dd;
	bool change_al_layout = false;
	enum dds_flags ddsf;
	sector_t u_size;
	int err;

	retcode = FUNC1(&adm_ctx, skb, info, DRBD_ADM_NEED_MINOR);
	if (!adm_ctx.reply_skb)
		return retcode;
	if (retcode != NO_ERROR)
		goto finish;

	FUNC14(&adm_ctx.resource->adm_mutex);
	device = adm_ctx.device;
	if (!FUNC10(device)) {
		retcode = ERR_NO_DISK;
		goto fail;
	}

	FUNC13(&rs, 0, sizeof(struct resize_parms));
	rs.al_stripes = device->ldev->md.al_stripes;
	rs.al_stripe_size = device->ldev->md.al_stripe_size_4k * 4;
	if (info->attrs[DRBD_NLA_RESIZE_PARMS]) {
		err = FUNC21(&rs, info);
		if (err) {
			retcode = ERR_MANDATORY_TAG;
			FUNC5(adm_ctx.reply_skb, FUNC9(err));
			goto fail_ldev;
		}
	}

	if (device->state.conn > C_CONNECTED) {
		retcode = ERR_RESIZE_RESYNC;
		goto fail_ldev;
	}

	if (device->state.role == R_SECONDARY &&
	    device->state.peer == R_SECONDARY) {
		retcode = ERR_NO_PRIMARY;
		goto fail_ldev;
	}

	if (rs.no_resync && FUNC8(device)->connection->agreed_pro_version < 93) {
		retcode = ERR_NEED_APV_93;
		goto fail_ldev;
	}

	FUNC19();
	u_size = FUNC18(device->ldev->disk_conf)->disk_size;
	FUNC20();
	if (u_size != (sector_t)rs.resize_size) {
		new_disk_conf = FUNC12(sizeof(struct disk_conf), GFP_KERNEL);
		if (!new_disk_conf) {
			retcode = ERR_NOMEM;
			goto fail_ldev;
		}
	}

	if (device->ldev->md.al_stripes != rs.al_stripes ||
	    device->ldev->md.al_stripe_size_4k != rs.al_stripe_size / 4) {
		u32 al_size_k = rs.al_stripes * rs.al_stripe_size;

		if (al_size_k > (16 * 1024 * 1024)) {
			retcode = ERR_MD_LAYOUT_TOO_BIG;
			goto fail_ldev;
		}

		if (al_size_k < MD_32kB_SECT/2) {
			retcode = ERR_MD_LAYOUT_TOO_SMALL;
			goto fail_ldev;
		}

		if (device->state.conn != C_CONNECTED && !rs.resize_force) {
			retcode = ERR_MD_LAYOUT_CONNECTED;
			goto fail_ldev;
		}

		change_al_layout = true;
	}

	if (device->ldev->known_size != FUNC3(device->ldev->backing_bdev))
		device->ldev->known_size = FUNC3(device->ldev->backing_bdev);

	if (new_disk_conf) {
		FUNC14(&device->resource->conf_update);
		old_disk_conf = device->ldev->disk_conf;
		*new_disk_conf = *old_disk_conf;
		new_disk_conf->disk_size = (sector_t)rs.resize_size;
		FUNC17(device->ldev->disk_conf, new_disk_conf);
		FUNC15(&device->resource->conf_update);
		FUNC23();
		FUNC11(old_disk_conf);
		new_disk_conf = NULL;
	}

	ddsf = (rs.resize_force ? DDSF_FORCED : 0) | (rs.no_resync ? DDSF_NO_RESYNC : 0);
	dd = FUNC2(device, ddsf, change_al_layout ? &rs : NULL);
	FUNC4(device);
	FUNC16(device);
	if (dd == DS_ERROR) {
		retcode = ERR_NOMEM_BITMAP;
		goto fail;
	} else if (dd == DS_ERROR_SPACE_MD) {
		retcode = ERR_MD_LAYOUT_NO_FIT;
		goto fail;
	} else if (dd == DS_ERROR_SHRINK) {
		retcode = ERR_IMPLICIT_SHRINK;
		goto fail;
	}

	if (device->state.conn == C_CONNECTED) {
		if (dd == DS_GREW)
			FUNC22(RESIZE_PENDING, &device->flags);

		FUNC7(FUNC8(device));
		FUNC6(FUNC8(device), 1, ddsf);
	}

 fail:
	FUNC15(&adm_ctx.resource->adm_mutex);
 finish:
	FUNC0(&adm_ctx, info, retcode);
	return 0;

 fail_ldev:
	FUNC16(device);
	FUNC11(new_disk_conf);
	goto fail;
}