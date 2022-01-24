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
struct event_overlapped {int dummy; } ;
struct bufferevent {int /*<<< orphan*/  output; } ;
struct TYPE_2__ {struct bufferevent bev; } ;
struct bufferevent_async {int write_in_progress; scalar_t__ ok; TYPE_1__ bev; } ;
typedef  int /*<<< orphan*/  ev_uintptr_t ;
typedef  int ev_ssize_t ;

/* Variables and functions */
 short BEV_EVENT_EOF ; 
 short BEV_EVENT_ERROR ; 
 short BEV_EVENT_WRITING ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  EV_WRITE ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*,short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent_async*) ; 
 int /*<<< orphan*/  FUNC6 (struct bufferevent*,struct event_overlapped*) ; 
 int /*<<< orphan*/  FUNC7 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 struct bufferevent_async* FUNC10 (struct event_overlapped*) ; 

__attribute__((used)) static void
FUNC11(struct event_overlapped *eo, ev_uintptr_t key,
    ev_ssize_t nbytes, int ok)
{
	struct bufferevent_async *bev_a = FUNC10(eo);
	struct bufferevent *bev = &bev_a->bev.bev;
	short what = BEV_EVENT_WRITING;
	ev_ssize_t amount_unwritten;

	FUNC0(bev);
	FUNC2(bev_a->write_in_progress);

	amount_unwritten = bev_a->write_in_progress - nbytes;
	FUNC9(bev->output, nbytes);
	bev_a->write_in_progress = 0;

	if (amount_unwritten)
		FUNC8(&bev_a->bev,
		                                     -amount_unwritten);


	if (!ok)
		FUNC6(bev, eo);

	if (bev_a->ok) {
		if (ok && nbytes) {
			FUNC1(bev);
			FUNC4(bev, EV_WRITE, 0);
			FUNC5(bev_a);
		} else if (!ok) {
			what |= BEV_EVENT_ERROR;
			bev_a->ok = 0;
			FUNC3(bev, what, 0);
		} else if (!nbytes) {
			what |= BEV_EVENT_EOF;
			bev_a->ok = 0;
			FUNC3(bev, what, 0);
		}
	}

	FUNC7(bev);
}