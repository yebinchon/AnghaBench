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
struct TYPE_3__ {scalar_t__* nr_queued; int /*<<< orphan*/ * queued; } ;
struct throtl_grp {int /*<<< orphan*/ * slice_end; TYPE_2__* td; TYPE_1__ service_queue; } ;
struct bio {int dummy; } ;
struct TYPE_4__ {scalar_t__ throtl_slice; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ U64_MAX ; 
 scalar_t__ UINT_MAX ; 
 int FUNC1 (struct bio*) ; 
 scalar_t__ jiffies ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (struct throtl_grp*,int) ; 
 scalar_t__ FUNC4 (struct throtl_grp*,int) ; 
 scalar_t__ FUNC5 (struct throtl_grp*,struct bio*,unsigned long*) ; 
 scalar_t__ FUNC6 (struct throtl_grp*,struct bio*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (struct throtl_grp*,int,scalar_t__) ; 
 struct bio* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct throtl_grp*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct throtl_grp*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static bool FUNC12(struct throtl_grp *tg, struct bio *bio,
			    unsigned long *wait)
{
	bool rw = FUNC1(bio);
	unsigned long bps_wait = 0, iops_wait = 0, max_wait = 0;

	/*
 	 * Currently whole state machine of group depends on first bio
	 * queued in the group bio list. So one should not be calling
	 * this function with a different bio if there are other bios
	 * queued.
	 */
	FUNC0(tg->service_queue.nr_queued[rw] &&
	       bio != FUNC8(&tg->service_queue.queued[rw]));

	/* If tg->bps = -1, then BW is unlimited */
	if (FUNC3(tg, rw) == U64_MAX &&
	    FUNC4(tg, rw) == UINT_MAX) {
		if (wait)
			*wait = 0;
		return true;
	}

	/*
	 * If previous slice expired, start a new one otherwise renew/extend
	 * existing slice to make sure it is at least throtl_slice interval
	 * long since now. New slice is started only for empty throttle group.
	 * If there is queued bio, that means there should be an active
	 * slice and it should be extended instead.
	 */
	if (FUNC9(tg, rw) && !(tg->service_queue.nr_queued[rw]))
		FUNC10(tg, rw);
	else {
		if (FUNC11(tg->slice_end[rw],
		    jiffies + tg->td->throtl_slice))
			FUNC7(tg, rw,
				jiffies + tg->td->throtl_slice);
	}

	if (FUNC5(tg, bio, &bps_wait) &&
	    FUNC6(tg, bio, &iops_wait)) {
		if (wait)
			*wait = 0;
		return true;
	}

	max_wait = FUNC2(bps_wait, iops_wait);

	if (wait)
		*wait = max_wait;

	if (FUNC11(tg->slice_end[rw], jiffies + max_wait))
		FUNC7(tg, rw, jiffies + max_wait);

	return false;
}