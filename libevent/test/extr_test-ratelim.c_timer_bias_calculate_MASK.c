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
struct timeval {int member_1; int /*<<< orphan*/  member_0; } ;
struct event_config {int dummy; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_BASE_FLAG_PRECISE_TIMER ; 
 int /*<<< orphan*/  EV_PERSIST ; 
 double FUNC0 (int,int) ; 
 int TIMER_MAX_COST_USEC ; 
 scalar_t__ FUNC1 (struct event*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC3 (struct event_base*) ; 
 struct event_base* FUNC4 (struct event_config*) ; 
 int /*<<< orphan*/  FUNC5 (struct event_config*) ; 
 struct event_config* FUNC6 () ; 
 scalar_t__ FUNC7 (struct event_config*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct event*) ; 
 struct event* FUNC9 (struct event_base*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  timer_bias_cb ; 
 int timer_bias_events ; 
 int timer_bias_spend ; 
 int /*<<< orphan*/  timer_bias_start ; 

__attribute__((used)) static double
FUNC13(void)
{
	struct event_config *cfg = NULL;
	struct event_base *base = NULL;
	struct event *timer = NULL;
	struct timeval tv = { 0, 1 };

	cfg = FUNC6();
	if (!cfg)
		goto err;
	if (FUNC7(cfg, EVENT_BASE_FLAG_PRECISE_TIMER))
		goto err;
	base = FUNC4(cfg);
	if (!base)
		goto err;

	timer = FUNC9(base, -1, EV_PERSIST, timer_bias_cb, FUNC10());
	if (!timer || FUNC1(timer, &tv)) {
		goto err;
	}

	FUNC11(&timer_bias_start, NULL);
	FUNC2(base);
	FUNC8(timer);

	return FUNC0(timer_bias_spend / 1e6 / timer_bias_events / TIMER_MAX_COST_USEC, 5);

err:
	if (cfg)
		FUNC5(cfg);
	if (timer)
		FUNC8(timer);
	if (base)
		FUNC3(base);

	FUNC12(stderr, "Couldn't create event for CPU cycle counter bias\n");
	return -1;
}