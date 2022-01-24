#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bufferevent {int enabled; int /*<<< orphan*/  output; } ;
struct TYPE_3__ {scalar_t__ write_suspended; scalar_t__ connecting; struct bufferevent bev; } ;
struct bufferevent_async {size_t write_in_progress; TYPE_1__ bev; scalar_t__ ok; int /*<<< orphan*/  write_overlapped; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEV_EVENT_ERROR ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent_async*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent_async*) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,size_t) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct bufferevent*) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct bufferevent_async *beva)
{
	size_t at_most;
	int limit;
	struct bufferevent *bev = &beva->bev.bev;

	/* Don't write if there's a write in progress, or we do not
	 * want to write, or when there's nothing left to write. */
	if (beva->write_in_progress || beva->bev.connecting)
		return;
	if (!beva->ok || !(bev->enabled&EV_WRITE) ||
	    !FUNC7(bev->output)) {
		FUNC2(beva);
		return;
	}

	at_most = FUNC7(bev->output);

	/* This is safe so long as bufferevent_get_write_max never returns
	 * more than INT_MAX.  That's true for now. XXXX */
	limit = (int)FUNC5(&beva->bev);
	if (at_most >= (size_t)limit && limit >= 0)
		at_most = limit;

	if (beva->bev.write_suspended) {
		FUNC2(beva);
		return;
	}

	/*  XXXX doesn't respect low-water mark very well. */
	FUNC6(bev);
	if (FUNC8(bev->output, at_most,
	    &beva->write_overlapped)) {
		FUNC3(bev);
		beva->ok = 0;
		FUNC0(bev, BEV_EVENT_ERROR, 0);
	} else {
		beva->write_in_progress = at_most;
		FUNC4(&beva->bev, at_most);
		FUNC1(beva);
	}
}