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
struct bufferevent_rate_limit_group {int /*<<< orphan*/  n_members; } ;
struct bufferevent_private {TYPE_1__* rate_limiting; } ;
struct bufferevent {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  next_in_group; } ;
struct TYPE_3__ {struct bufferevent_rate_limit_group* group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  BEV_SUSPEND_BW_GROUP ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 struct bufferevent_private* FUNC2 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent_rate_limit_group*) ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent_rate_limit_group*) ; 
 int /*<<< orphan*/  FUNC6 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 TYPE_2__* rate_limiting ; 

int
FUNC8(struct bufferevent *bev,
    int unsuspend)
{
	struct bufferevent_private *bevp = FUNC2(bev);
	FUNC0(bev);
	if (bevp->rate_limiting && bevp->rate_limiting->group) {
		struct bufferevent_rate_limit_group *g =
		    bevp->rate_limiting->group;
		FUNC4(g);
		bevp->rate_limiting->group = NULL;
		--g->n_members;
		FUNC3(bevp, rate_limiting->next_in_group);
		FUNC5(g);
	}
	if (unsuspend) {
		FUNC6(bev, BEV_SUSPEND_BW_GROUP);
		FUNC7(bev, BEV_SUSPEND_BW_GROUP);
	}
	FUNC1(bev);
	return 0;
}