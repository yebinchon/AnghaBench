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
struct throtl_service_queue {scalar_t__* nr_queued; } ;
struct throtl_grp {TYPE_1__* td; scalar_t__** iops; scalar_t__** bps; struct throtl_service_queue service_queue; } ;
struct TYPE_2__ {scalar_t__ throtl_slice; } ;

/* Variables and functions */
 size_t LIMIT_LOW ; 
 size_t READ ; 
 size_t WRITE ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC0 (struct throtl_grp*) ; 
 scalar_t__ FUNC1 (struct throtl_grp*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static bool FUNC3(struct throtl_grp *tg)
{
	struct throtl_service_queue *sq = &tg->service_queue;
	bool read_limit, write_limit;

	/*
	 * if cgroup reaches low limit (if low limit is 0, the cgroup always
	 * reaches), it's ok to upgrade to next limit
	 */
	read_limit = tg->bps[READ][LIMIT_LOW] || tg->iops[READ][LIMIT_LOW];
	write_limit = tg->bps[WRITE][LIMIT_LOW] || tg->iops[WRITE][LIMIT_LOW];
	if (!read_limit && !write_limit)
		return true;
	if (read_limit && sq->nr_queued[READ] &&
	    (!write_limit || sq->nr_queued[WRITE]))
		return true;
	if (write_limit && sq->nr_queued[WRITE] &&
	    (!read_limit || sq->nr_queued[READ]))
		return true;

	if (FUNC2(jiffies,
		FUNC0(tg) + tg->td->throtl_slice) &&
	    FUNC1(tg))
		return true;
	return false;
}