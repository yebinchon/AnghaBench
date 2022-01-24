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
struct bufferevent_rate_limit_group {int read_suspended; int write_suspended; int /*<<< orphan*/  members; int /*<<< orphan*/  n_members; } ;
struct bufferevent_rate_limit {struct bufferevent_rate_limit_group* group; int /*<<< orphan*/  refill_bucket_event; } ;
struct bufferevent_private {struct bufferevent_rate_limit* rate_limiting; } ;
struct bufferevent {int /*<<< orphan*/  ev_base; } ;
struct TYPE_2__ {int /*<<< orphan*/  next_in_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  BEV_SUSPEND_BW_GROUP ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 struct bufferevent_private* FUNC2 (struct bufferevent*) ; 
 int /*<<< orphan*/  EV_FINALIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bufferevent_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent_rate_limit_group*) ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent_rate_limit_group*) ; 
 int /*<<< orphan*/  bev_refill_callback_ ; 
 int /*<<< orphan*/  FUNC6 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC7 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bufferevent_private*) ; 
 struct bufferevent_rate_limit* FUNC10 (int,int) ; 
 TYPE_1__* rate_limiting ; 

int
FUNC11(struct bufferevent *bev,
    struct bufferevent_rate_limit_group *g)
{
	int wsuspend, rsuspend;
	struct bufferevent_private *bevp = FUNC2(bev);
	FUNC0(bev);

	if (!bevp->rate_limiting) {
		struct bufferevent_rate_limit *rlim;
		rlim = FUNC10(1, sizeof(struct bufferevent_rate_limit));
		if (!rlim) {
			FUNC1(bev);
			return -1;
		}
		FUNC9(&rlim->refill_bucket_event, bev->ev_base,
		    -1, EV_FINALIZE, bev_refill_callback_, bevp);
		bevp->rate_limiting = rlim;
	}

	if (bevp->rate_limiting->group == g) {
		FUNC1(bev);
		return 0;
	}
	if (bevp->rate_limiting->group)
		FUNC6(bev);

	FUNC4(g);
	bevp->rate_limiting->group = g;
	++g->n_members;
	FUNC3(&g->members, bevp, rate_limiting->next_in_group);

	rsuspend = g->read_suspended;
	wsuspend = g->write_suspended;

	FUNC5(g);

	if (rsuspend)
		FUNC7(bev, BEV_SUSPEND_BW_GROUP);
	if (wsuspend)
		FUNC8(bev, BEV_SUSPEND_BW_GROUP);

	FUNC1(bev);
	return 0;
}