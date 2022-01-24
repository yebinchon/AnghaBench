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
struct rq_wb {int wb_background; int wb_normal; scalar_t__ wc; } ;
struct rq_wait {int /*<<< orphan*/  wait; int /*<<< orphan*/  inflight; } ;
typedef  enum wbt_flags { ____Placeholder_wbt_flags } wbt_flags ;

/* Variables and functions */
 int WBT_DISCARD ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rq_wb*) ; 
 int /*<<< orphan*/  FUNC2 (struct rq_wb*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rq_wb*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct rq_wb *rwb, struct rq_wait *rqw,
			 enum wbt_flags wb_acct)
{
	int inflight, limit;

	inflight = FUNC0(&rqw->inflight);

	/*
	 * wbt got disabled with IO in flight. Wake up any potential
	 * waiters, we don't have to do more than that.
	 */
	if (FUNC3(!FUNC1(rwb))) {
		FUNC2(rwb);
		return;
	}

	/*
	 * For discards, our limit is always the background. For writes, if
	 * the device does write back caching, drop further down before we
	 * wake people up.
	 */
	if (wb_acct & WBT_DISCARD)
		limit = rwb->wb_background;
	else if (rwb->wc && !FUNC5(rwb))
		limit = 0;
	else
		limit = rwb->wb_normal;

	/*
	 * Don't wake anyone up if we are above the normal limit.
	 */
	if (inflight && inflight >= limit)
		return;

	if (FUNC6(&rqw->wait)) {
		int diff = limit - inflight;

		if (!inflight || diff >= rwb->wb_background / 2)
			FUNC4(&rqw->wait);
	}
}