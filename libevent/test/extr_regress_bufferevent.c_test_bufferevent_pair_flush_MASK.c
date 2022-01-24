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
struct bufferevent {int dummy; } ;
struct basic_test_data {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int BEV_EVENT_EOF ; 
 int BEV_EVENT_READING ; 
 int /*<<< orphan*/  BEV_FINISHED ; 
 int /*<<< orphan*/  EVLOOP_ONCE ; 
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  EV_WRITE ; 
 scalar_t__ FUNC0 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bufferevent**) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pair_flush_eventcb ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct basic_test_data *data = arg;
	struct bufferevent *pair[2];
	struct bufferevent *bev1 = NULL;
	struct bufferevent *bev2 = NULL;
	int callback_what = 0;

	FUNC6(0 == FUNC3(data->base, 0, pair));
	bev1 = pair[0];
	bev2 = pair[1];
	FUNC6(0 == FUNC0(bev1, EV_WRITE));
	FUNC6(0 == FUNC0(bev2, EV_READ));

	FUNC4(bev2, NULL, NULL, pair_flush_eventcb, &callback_what);

	FUNC1(bev1, EV_WRITE, BEV_FINISHED);

	FUNC5(data->base, EVLOOP_ONCE);

	FUNC6(callback_what == (BEV_EVENT_READING | BEV_EVENT_EOF));

end:
	if (bev1)
		FUNC2(bev1);
	if (bev2)
		FUNC2(bev2);
}