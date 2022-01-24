#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int /*<<< orphan*/  backing_dev_info; } ;
struct drbd_device {char congestion_reason; TYPE_1__* ldev; } ;
struct TYPE_6__ {TYPE_2__* connection; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  backing_bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CALLBACK_PENDING ; 
 int /*<<< orphan*/  D_UP_TO_DATE ; 
 int /*<<< orphan*/  NET_CONGESTED ; 
 int WB_async_congested ; 
 int WB_sync_congested ; 
 struct request_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC2 (struct drbd_device*) ; 
 scalar_t__ FUNC3 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drbd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drbd_device*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(void *congested_data, int bdi_bits)
{
	struct drbd_device *device = congested_data;
	struct request_queue *q;
	char reason = '-';
	int r = 0;

	if (!FUNC5(device)) {
		/* DRBD has frozen IO */
		r = bdi_bits;
		reason = 'd';
		goto out;
	}

	if (FUNC7(CALLBACK_PENDING, &FUNC2(device)->connection->flags)) {
		r |= (1 << WB_async_congested);
		/* Without good local data, we would need to read from remote,
		 * and that would need the worker thread as well, which is
		 * currently blocked waiting for that usermode helper to
		 * finish.
		 */
		if (!FUNC4(device, D_UP_TO_DATE))
			r |= (1 << WB_sync_congested);
		else
			FUNC6(device);
		r &= bdi_bits;
		reason = 'c';
		goto out;
	}

	if (FUNC3(device)) {
		q = FUNC0(device->ldev->backing_bdev);
		r = FUNC1(q->backing_dev_info, bdi_bits);
		FUNC6(device);
		if (r)
			reason = 'b';
	}

	if (bdi_bits & (1 << WB_async_congested) &&
	    FUNC7(NET_CONGESTED, &FUNC2(device)->connection->flags)) {
		r |= (1 << WB_async_congested);
		reason = reason == 'b' ? 'a' : 'n';
	}

out:
	device->congestion_reason = reason;
	return r;
}