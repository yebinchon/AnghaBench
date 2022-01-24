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
typedef  scalar_t__ u64 ;
struct rq_depth {scalar_t__ scale_step; } ;
struct TYPE_4__ {TYPE_1__* q; } ;
struct rq_wb {scalar_t__ cur_win_nsec; scalar_t__ min_lat_nsec; struct rq_depth rq_depth; TYPE_2__ rqos; } ;
struct blk_rq_stat {scalar_t__ min; scalar_t__ nr_samples; } ;
struct backing_dev_info {int dummy; } ;
struct TYPE_3__ {struct backing_dev_info* backing_dev_info; } ;

/* Variables and functions */
 int LAT_EXCEEDED ; 
 int LAT_OK ; 
 int LAT_UNKNOWN ; 
 int LAT_UNKNOWN_WRITES ; 
 size_t READ ; 
 size_t WRITE ; 
 scalar_t__ FUNC0 (struct rq_wb*) ; 
 int /*<<< orphan*/  FUNC1 (struct blk_rq_stat*) ; 
 int /*<<< orphan*/  FUNC2 (struct backing_dev_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct backing_dev_info*,struct blk_rq_stat*) ; 
 scalar_t__ FUNC4 (struct rq_wb*) ; 
 scalar_t__ FUNC5 (struct rq_wb*) ; 

__attribute__((used)) static int FUNC6(struct rq_wb *rwb, struct blk_rq_stat *stat)
{
	struct backing_dev_info *bdi = rwb->rqos.q->backing_dev_info;
	struct rq_depth *rqd = &rwb->rq_depth;
	u64 thislat;

	/*
	 * If our stored sync issue exceeds the window size, or it
	 * exceeds our min target AND we haven't logged any entries,
	 * flag the latency as exceeded. wbt works off completion latencies,
	 * but for a flooded device, a single sync IO can take a long time
	 * to complete after being issued. If this time exceeds our
	 * monitoring window AND we didn't see any other completions in that
	 * window, then count that sync IO as a violation of the latency.
	 */
	thislat = FUNC0(rwb);
	if (thislat > rwb->cur_win_nsec ||
	    (thislat > rwb->min_lat_nsec && !stat[READ].nr_samples)) {
		FUNC2(bdi, thislat);
		return LAT_EXCEEDED;
	}

	/*
	 * No read/write mix, if stat isn't valid
	 */
	if (!FUNC1(stat)) {
		/*
		 * If we had writes in this stat window and the window is
		 * current, we're only doing writes. If a task recently
		 * waited or still has writes in flights, consider us doing
		 * just writes as well.
		 */
		if (stat[WRITE].nr_samples || FUNC4(rwb) ||
		    FUNC5(rwb))
			return LAT_UNKNOWN_WRITES;
		return LAT_UNKNOWN;
	}

	/*
	 * If the 'min' latency exceeds our target, step down.
	 */
	if (stat[READ].min > rwb->min_lat_nsec) {
		FUNC2(bdi, stat[READ].min);
		FUNC3(bdi, stat);
		return LAT_EXCEEDED;
	}

	if (rqd->scale_step)
		FUNC3(bdi, stat);

	return LAT_OK;
}