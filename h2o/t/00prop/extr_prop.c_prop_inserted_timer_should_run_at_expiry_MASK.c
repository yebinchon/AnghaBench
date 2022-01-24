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
struct theft {int dummy; } ;
struct test_timer {int called; int /*<<< orphan*/  t; } ;
struct test_input {int /*<<< orphan*/  second_time; int /*<<< orphan*/  first_time; int /*<<< orphan*/  init_time; } ;
typedef  int /*<<< orphan*/  h2o_timerwheel_t ;
typedef  enum theft_trial_res { ____Placeholder_theft_trial_res } theft_trial_res ;

/* Variables and functions */
 int THEFT_TRIAL_FAIL ; 
 int THEFT_TRIAL_PASS ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer_cb ; 

__attribute__((used)) static enum theft_trial_res FUNC6(struct theft *theft, void *input_)
{
    struct test_input *input = input_;
    size_t events_run;
    h2o_timerwheel_t *ctx;
    ctx = FUNC0(6, input->init_time);
    FUNC5(ctx, input->init_time);

    struct test_timer t;
    FUNC3(&t.t, timer_cb);
    t.called = 0;
    FUNC4(ctx, &t.t, input->first_time);
    events_run = FUNC5(ctx, input->second_time);

    if (events_run != 1)
        return THEFT_TRIAL_FAIL;
    if (t.called != 1)
        return THEFT_TRIAL_FAIL;
    if (FUNC2(ctx) != UINT64_MAX)
        return THEFT_TRIAL_FAIL;
    FUNC1(ctx);
    return THEFT_TRIAL_PASS;
}