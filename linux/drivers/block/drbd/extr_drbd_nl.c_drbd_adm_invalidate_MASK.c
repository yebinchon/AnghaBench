#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;
struct TYPE_6__ {scalar_t__ conn; scalar_t__ role; } ;
struct drbd_device {TYPE_2__ state; int /*<<< orphan*/  flags; int /*<<< orphan*/  misc_wait; } ;
struct drbd_config_context {TYPE_3__* resource; struct drbd_device* device; int /*<<< orphan*/  reply_skb; } ;
struct TYPE_8__ {TYPE_1__* connection; } ;
struct TYPE_7__ {int /*<<< orphan*/  adm_mutex; } ;
struct TYPE_5__ {int /*<<< orphan*/  sender_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP_IO ; 
 int /*<<< orphan*/  BM_LOCKED_MASK ; 
 scalar_t__ C_STANDALONE ; 
 int /*<<< orphan*/  C_STARTING_SYNC_T ; 
 int /*<<< orphan*/  DRBD_ADM_NEED_MINOR ; 
 int /*<<< orphan*/  D_INCONSISTENT ; 
 int ERR_IO_MD_DISK ; 
 int ERR_NO_DISK ; 
 int NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ R_SECONDARY ; 
 int SS_SUCCESS ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  disk ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_config_context*,struct genl_info*,int) ; 
 int FUNC2 (struct drbd_config_context*,struct sk_buff*,struct genl_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct drbd_device*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drbd_bmio_set_n_write ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct drbd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drbd_device*) ; 
 TYPE_4__* FUNC8 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 

int FUNC15(struct sk_buff *skb, struct genl_info *info)
{
	struct drbd_config_context adm_ctx;
	struct drbd_device *device;
	int retcode; /* enum drbd_ret_code rsp. enum drbd_state_rv */

	retcode = FUNC2(&adm_ctx, skb, info, DRBD_ADM_NEED_MINOR);
	if (!adm_ctx.reply_skb)
		return retcode;
	if (retcode != NO_ERROR)
		goto out;

	device = adm_ctx.device;
	if (!FUNC9(device)) {
		retcode = ERR_NO_DISK;
		goto out;
	}

	FUNC10(&adm_ctx.resource->adm_mutex);

	/* If there is still bitmap IO pending, probably because of a previous
	 * resync just being finished, wait for it before requesting a new resync.
	 * Also wait for it's after_state_ch(). */
	FUNC7(device);
	FUNC14(device->misc_wait, !FUNC13(BITMAP_IO, &device->flags));
	FUNC4(&FUNC8(device)->connection->sender_work);

	/* If we happen to be C_STANDALONE R_SECONDARY, just change to
	 * D_INCONSISTENT, and set all bits in the bitmap.  Otherwise,
	 * try to start a resync handshake as sync target for full sync.
	 */
	if (device->state.conn == C_STANDALONE && device->state.role == R_SECONDARY) {
		retcode = FUNC5(device, FUNC0(disk, D_INCONSISTENT));
		if (retcode >= SS_SUCCESS) {
			if (FUNC3(device, &drbd_bmio_set_n_write,
				"set_n_write from invalidate", BM_LOCKED_MASK))
				retcode = ERR_IO_MD_DISK;
		}
	} else
		retcode = FUNC5(device, FUNC0(conn, C_STARTING_SYNC_T));
	FUNC6(device);
	FUNC11(&adm_ctx.resource->adm_mutex);
	FUNC12(device);
out:
	FUNC1(&adm_ctx, info, retcode);
	return 0;
}