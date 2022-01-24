#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  ev_base; } ;
struct bufferevent_private {int read_suspended; int write_suspended; TYPE_5__ bev; TYPE_1__* rate_limiting; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;
struct TYPE_11__ {int /*<<< orphan*/  tick_timeout; } ;
struct TYPE_10__ {scalar_t__ read_limit; scalar_t__ write_limit; } ;
struct TYPE_9__ {TYPE_3__* cfg; int /*<<< orphan*/  refill_bucket_event; TYPE_2__ limit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int BEV_SUSPEND_BW ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int) ; 
 unsigned int FUNC4 (struct timeval*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct timeval*) ; 

__attribute__((used)) static void
FUNC8(evutil_socket_t fd, short what, void *arg)
{
	unsigned tick;
	struct timeval now;
	struct bufferevent_private *bev = arg;
	int again = 0;
	FUNC0(&bev->bev);
	if (!bev->rate_limiting || !bev->rate_limiting->cfg) {
		FUNC1(&bev->bev);
		return;
	}

	/* First, update the bucket */
	FUNC7(bev->bev.ev_base, &now);
	tick = FUNC4(&now,
	    bev->rate_limiting->cfg);
	FUNC5(&bev->rate_limiting->limit,
	    bev->rate_limiting->cfg,
	    tick);

	/* Now unsuspend any read/write operations as appropriate. */
	if ((bev->read_suspended & BEV_SUSPEND_BW)) {
		if (bev->rate_limiting->limit.read_limit > 0)
			FUNC2(&bev->bev, BEV_SUSPEND_BW);
		else
			again = 1;
	}
	if ((bev->write_suspended & BEV_SUSPEND_BW)) {
		if (bev->rate_limiting->limit.write_limit > 0)
			FUNC3(&bev->bev, BEV_SUSPEND_BW);
		else
			again = 1;
	}
	if (again) {
		/* One or more of the buckets may need another refill if they
		   started negative.

		   XXXX if we need to be quiet for more ticks, we should
		   maybe figure out what timeout we really want.
		*/
		/* XXXX Handle event_add failure somehow */
		FUNC6(&bev->rate_limiting->refill_bucket_event,
		    &bev->rate_limiting->cfg->tick_timeout);
	}
	FUNC1(&bev->bev);
}