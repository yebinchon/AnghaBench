#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rq_depth {int scale_step; } ;
struct rq_wb {int cur_win_nsec; int win_nsec; int /*<<< orphan*/  cb; struct rq_depth rq_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct rq_wb *rwb)
{
	struct rq_depth *rqd = &rwb->rq_depth;

	if (rqd->scale_step > 0) {
		/*
		 * We should speed this up, using some variant of a fast
		 * integer inverse square root calculation. Since we only do
		 * this for every window expiration, it's not a huge deal,
		 * though.
		 */
		rwb->cur_win_nsec = FUNC1(rwb->win_nsec << 4,
					FUNC2((rqd->scale_step + 1) << 8));
	} else {
		/*
		 * For step < 0, we don't want to increase/decrease the
		 * window size.
		 */
		rwb->cur_win_nsec = rwb->win_nsec;
	}

	FUNC0(rwb->cb, rwb->cur_win_nsec);
}