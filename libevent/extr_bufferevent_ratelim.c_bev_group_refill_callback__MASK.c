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
struct timeval {int dummy; } ;
struct TYPE_2__ {scalar_t__ read_limit; scalar_t__ write_limit; } ;
struct bufferevent_rate_limit_group {scalar_t__ min_share; TYPE_1__ rate_limit; scalar_t__ write_suspended; scalar_t__ pending_unsuspend_write; scalar_t__ read_suspended; scalar_t__ pending_unsuspend_read; int /*<<< orphan*/  rate_limit_cfg; int /*<<< orphan*/  master_refill_event; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent_rate_limit_group*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent_rate_limit_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent_rate_limit_group*) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent_rate_limit_group*) ; 
 unsigned int FUNC4 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct timeval*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(evutil_socket_t fd, short what, void *arg)
{
	struct bufferevent_rate_limit_group *g = arg;
	unsigned tick;
	struct timeval now;

	FUNC6(FUNC7(&g->master_refill_event), &now);

	FUNC0(g);

	tick = FUNC4(&now, &g->rate_limit_cfg);
	FUNC5(&g->rate_limit, &g->rate_limit_cfg, tick);

	if (g->pending_unsuspend_read ||
	    (g->read_suspended && (g->rate_limit.read_limit >= g->min_share))) {
		FUNC2(g);
	}
	if (g->pending_unsuspend_write ||
	    (g->write_suspended && (g->rate_limit.write_limit >= g->min_share))){
		FUNC3(g);
	}

	/* XXXX Rather than waiting to the next tick to unsuspend stuff
	 * with pending_unsuspend_write/read, we should do it on the
	 * next iteration of the mainloop.
	 */

	FUNC1(g);
}