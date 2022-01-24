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
struct TYPE_5__ {int /*<<< orphan*/  w; } ;
struct drbd_device {int /*<<< orphan*/  misc_wait; TYPE_2__ bm_io_work; int /*<<< orphan*/  flags; int /*<<< orphan*/  ap_bio_cnt; } ;
struct TYPE_6__ {TYPE_1__* connection; } ;
struct TYPE_4__ {int /*<<< orphan*/  sender_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP_IO ; 
 int /*<<< orphan*/  BITMAP_IO_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC8(struct drbd_device *device)
{
	int mxb = FUNC2(device);
	int ap_bio = FUNC1(&device->ap_bio_cnt);

	FUNC0(device, ap_bio >= 0);

	if (ap_bio == 0 && FUNC6(BITMAP_IO, &device->flags)) {
		if (!FUNC5(BITMAP_IO_QUEUED, &device->flags))
			FUNC3(&FUNC4(device)->
				connection->sender_work,
				&device->bm_io_work.w);
	}

	/* this currently does wake_up for every dec_ap_bio!
	 * maybe rather introduce some type of hysteresis?
	 * e.g. (ap_bio == mxb/2 || ap_bio == 0) ? */
	if (ap_bio < mxb)
		FUNC7(&device->misc_wait);
}