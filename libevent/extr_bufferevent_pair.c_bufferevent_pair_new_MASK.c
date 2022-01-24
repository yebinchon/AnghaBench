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
struct event_base {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct bufferevent_pair {struct bufferevent_pair* partner; TYPE_1__ bev; } ;
struct bufferevent {int /*<<< orphan*/  output; int /*<<< orphan*/  input; } ;

/* Variables and functions */
 int BEV_OPT_DEFER_CALLBACKS ; 
 int BEV_OPT_THREADSAFE ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 struct bufferevent_pair* FUNC2 (struct event_base*,int) ; 
 struct bufferevent* FUNC3 (struct bufferevent_pair*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

int
FUNC5(struct event_base *base, int options,
    struct bufferevent *pair[2])
{
	struct bufferevent_pair *bufev1 = NULL, *bufev2 = NULL;
	int tmp_options;

	options |= BEV_OPT_DEFER_CALLBACKS;
	tmp_options = options & ~BEV_OPT_THREADSAFE;

	bufev1 = FUNC2(base, options);
	if (!bufev1)
		return -1;
	bufev2 = FUNC2(base, tmp_options);
	if (!bufev2) {
		FUNC1(FUNC3(bufev1));
		return -1;
	}

	if (options & BEV_OPT_THREADSAFE) {
		/*XXXX check return */
		FUNC0(FUNC3(bufev2), bufev1->bev.lock);
	}

	bufev1->partner = bufev2;
	bufev2->partner = bufev1;

	FUNC4(FUNC3(bufev1)->input, 0);
	FUNC4(FUNC3(bufev1)->output, 1);
	FUNC4(FUNC3(bufev2)->input, 0);
	FUNC4(FUNC3(bufev2)->output, 1);

	pair[0] = FUNC3(bufev1);
	pair[1] = FUNC3(bufev2);

	return 0;
}