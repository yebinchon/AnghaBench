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
typedef  scalar_t__ u64 ;
struct request_queue {int /*<<< orphan*/  backing_dev_info; } ;
struct drbd_md {int /*<<< orphan*/  flags; int /*<<< orphan*/  uuid_lock; scalar_t__* uuid; } ;
struct drbd_device {int /*<<< orphan*/  ed_uuid; int /*<<< orphan*/  flags; int /*<<< orphan*/  local_cnt; int /*<<< orphan*/  ap_bio_cnt; int /*<<< orphan*/  bm_writ_cnt; int /*<<< orphan*/  al_writ_cnt; int /*<<< orphan*/  writ_cnt; int /*<<< orphan*/  read_cnt; int /*<<< orphan*/  this_bdev; TYPE_1__* ldev; } ;
struct device_statistics {int dev_upper_blocked; int history_uuids_len; int /*<<< orphan*/  dev_exposed_data_uuid; int /*<<< orphan*/  dev_al_suspended; void* dev_lower_pending; void* dev_upper_pending; int /*<<< orphan*/  dev_bm_writes; int /*<<< orphan*/  dev_al_writes; int /*<<< orphan*/  dev_write; int /*<<< orphan*/  dev_read; int /*<<< orphan*/  dev_size; int /*<<< orphan*/  dev_lower_blocked; int /*<<< orphan*/  dev_disk_flags; scalar_t__ dev_current_uuid; scalar_t__ history_uuids; } ;
struct TYPE_2__ {int /*<<< orphan*/  backing_bdev; struct drbd_md md; } ;

/* Variables and functions */
 int /*<<< orphan*/  AL_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HISTORY_UUIDS ; 
 size_t UI_CURRENT ; 
 size_t UI_HISTORY_END ; 
 size_t UI_HISTORY_START ; 
 int WB_async_congested ; 
 int WB_sync_congested ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 struct request_queue* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_statistics*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct device_statistics *s,
				 struct drbd_device *device)
{
	FUNC7(s, 0, sizeof(*s));
	s->dev_upper_blocked = !FUNC6(device);
	if (FUNC5(device)) {
		struct drbd_md *md = &device->ldev->md;
		u64 *history_uuids = (u64 *)s->history_uuids;
		struct request_queue *q;
		int n;

		FUNC9(&md->uuid_lock);
		s->dev_current_uuid = md->uuid[UI_CURRENT];
		FUNC0(sizeof(s->history_uuids) < UI_HISTORY_END - UI_HISTORY_START + 1);
		for (n = 0; n < UI_HISTORY_END - UI_HISTORY_START + 1; n++)
			history_uuids[n] = md->uuid[UI_HISTORY_START + n];
		for (; n < HISTORY_UUIDS; n++)
			history_uuids[n] = 0;
		s->history_uuids_len = HISTORY_UUIDS;
		FUNC10(&md->uuid_lock);

		s->dev_disk_flags = md->flags;
		q = FUNC2(device->ldev->backing_bdev);
		s->dev_lower_blocked =
			FUNC3(q->backing_dev_info,
				      (1 << WB_async_congested) |
				      (1 << WB_sync_congested));
		FUNC8(device);
	}
	s->dev_size = FUNC4(device->this_bdev);
	s->dev_read = device->read_cnt;
	s->dev_write = device->writ_cnt;
	s->dev_al_writes = device->al_writ_cnt;
	s->dev_bm_writes = device->bm_writ_cnt;
	s->dev_upper_pending = FUNC1(&device->ap_bio_cnt);
	s->dev_lower_pending = FUNC1(&device->local_cnt);
	s->dev_al_suspended = FUNC11(AL_SUSPENDED, &device->flags);
	s->dev_exposed_data_uuid = device->ed_uuid;
}