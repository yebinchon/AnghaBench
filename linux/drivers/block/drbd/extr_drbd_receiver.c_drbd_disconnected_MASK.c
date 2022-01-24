#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drbd_peer_device {TYPE_2__* connection; struct drbd_device* device; } ;
struct drbd_device {int /*<<< orphan*/  done_ee; int /*<<< orphan*/  sync_ee; int /*<<< orphan*/  active_ee; int /*<<< orphan*/  read_ee; int /*<<< orphan*/  pp_in_use; int /*<<< orphan*/  pp_in_use_by_net; int /*<<< orphan*/  net_ee; int /*<<< orphan*/ * p_uuid; int /*<<< orphan*/  resync_timer; int /*<<< orphan*/  misc_wait; int /*<<< orphan*/  rs_pending_cnt; scalar_t__ rs_failed; scalar_t__ rs_total; TYPE_1__* resource; } ;
struct TYPE_4__ {int /*<<< orphan*/  sender_work; } ;
struct TYPE_3__ {int /*<<< orphan*/  req_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BM_LOCKED_CHANGE_ALLOWED ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_device*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drbd_device*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drbd_bm_write_copy_pages ; 
 int /*<<< orphan*/  FUNC6 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (struct drbd_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct drbd_device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct drbd_device*) ; 
 scalar_t__ FUNC13 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct drbd_peer_device *peer_device)
{
	struct drbd_device *device = peer_device->device;
	unsigned int i;

	/* wait for current activity to cease. */
	FUNC18(&device->resource->req_lock);
	FUNC1(device, &device->active_ee);
	FUNC1(device, &device->sync_ee);
	FUNC1(device, &device->read_ee);
	FUNC19(&device->resource->req_lock);

	/* We do not have data structures that would allow us to
	 * get the rs_pending_cnt down to 0 again.
	 *  * On C_SYNC_TARGET we do not have any data structures describing
	 *    the pending RSDataRequest's we have sent.
	 *  * On C_SYNC_SOURCE there is no data structure that tracks
	 *    the P_RS_DATA_REPLY blocks that we sent to the SyncTarget.
	 *  And no, it is not the sum of the reference counts in the
	 *  resync_LRU. The resync_LRU tracks the whole operation including
	 *  the disk-IO, while the rs_pending_cnt only tracks the blocks
	 *  on the fly. */
	FUNC11(device);
	device->rs_total = 0;
	device->rs_failed = 0;
	FUNC3(&device->rs_pending_cnt, 0);
	FUNC21(&device->misc_wait);

	FUNC4(&device->resync_timer);
	FUNC17(&device->resync_timer);

	/* wait for all w_e_end_data_req, w_e_end_rsdata_req, w_send_barrier,
	 * w_make_resync_request etc. which may still be on the worker queue
	 * to be "canceled" */
	FUNC7(&peer_device->connection->sender_work);

	FUNC6(device);

	/* This second workqueue flush is necessary, since drbd_finish_peer_reqs()
	   might have issued a work again. The one before drbd_finish_peer_reqs() is
	   necessary to reclain net_ee in drbd_finish_peer_reqs(). */
	FUNC7(&peer_device->connection->sender_work);

	/* need to do it again, drbd_finish_peer_reqs() may have populated it
	 * again via drbd_try_clear_on_disk_bm(). */
	FUNC11(device);

	FUNC14(device->p_uuid);
	device->p_uuid = NULL;

	if (!FUNC12(device))
		FUNC20(peer_device->connection);

	FUNC10(device);

	if (FUNC13(device)) {
		FUNC5(device, &drbd_bm_write_copy_pages,
				"write from disconnected", BM_LOCKED_CHANGE_ALLOWED);
		FUNC16(device);
	}

	/* tcp_close and release of sendpage pages can be deferred.  I don't
	 * want to use SO_LINGER, because apparently it can be deferred for
	 * more than 20 seconds (longest time I checked).
	 *
	 * Actually we don't care for exactly when the network stack does its
	 * put_page(), but release our reference on these pages right here.
	 */
	i = FUNC8(device, &device->net_ee);
	if (i)
		FUNC9(device, "net_ee not empty, killed %u entries\n", i);
	i = FUNC2(&device->pp_in_use_by_net);
	if (i)
		FUNC9(device, "pp_in_use_by_net = %d, expected 0\n", i);
	i = FUNC2(&device->pp_in_use);
	if (i)
		FUNC9(device, "pp_in_use = %d, expected 0\n", i);

	FUNC0(device, FUNC15(&device->read_ee));
	FUNC0(device, FUNC15(&device->active_ee));
	FUNC0(device, FUNC15(&device->sync_ee));
	FUNC0(device, FUNC15(&device->done_ee));

	return 0;
}