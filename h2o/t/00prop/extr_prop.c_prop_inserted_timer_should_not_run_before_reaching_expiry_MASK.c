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
typedef  scalar_t__ uint64_t ;
struct theft {int dummy; } ;
struct test_timer {int called; int /*<<< orphan*/  t; } ;
struct test_input {scalar_t__ init_time; scalar_t__ first_time; int second_time; } ;
typedef  int /*<<< orphan*/  h2o_timerwheel_t ;
typedef  enum theft_trial_res { ____Placeholder_theft_trial_res } theft_trial_res ;

/* Variables and functions */
 int THEFT_TRIAL_FAIL ; 
 int THEFT_TRIAL_PASS ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/ * FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (struct theft*,size_t) ; 
 int /*<<< orphan*/  timer_cb ; 

__attribute__((used)) static enum theft_trial_res FUNC7(struct theft *theft, void *input_)
{
    struct test_input *input = input_;
    uint64_t i;
    size_t events_run;
    h2o_timerwheel_t *ctx;
    ctx = FUNC0(6, input->init_time);
    FUNC5(ctx, input->init_time);
    size_t slices = 1;

    struct test_timer t;
    FUNC3(&t.t, timer_cb);
    t.called = 0;
    FUNC4(ctx, &t.t, input->first_time);

    slices = input->second_time / 100;
    for (i = input->init_time; i < input->first_time; i += FUNC6(theft, slices)) {
        events_run = FUNC5(ctx, i);
        if (events_run != 0)
            return THEFT_TRIAL_FAIL;
        if (t.called != 0)
            return THEFT_TRIAL_FAIL;
        if (FUNC2(ctx) == UINT64_MAX)
            return THEFT_TRIAL_FAIL;
    }

    events_run = FUNC5(ctx, i);

    if (events_run != 1)
        return THEFT_TRIAL_FAIL;
    if (t.called != 1)
        return THEFT_TRIAL_FAIL;
    if (FUNC2(ctx) != UINT64_MAX)
        return THEFT_TRIAL_FAIL;
    FUNC1(ctx);
    return THEFT_TRIAL_PASS;
}