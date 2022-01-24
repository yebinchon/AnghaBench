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
struct powerdomain {int state; int /*<<< orphan*/ * state_counter; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int OMAP_POWERSTATE_MASK ; 
 int PWRDM_POWER_RET ; 
#define  PWRDM_STATE_NOW 129 
#define  PWRDM_STATE_PREV 128 
 int PWRDM_TRACE_STATES_FLAG ; 
 int /*<<< orphan*/  FUNC0 (struct powerdomain*) ; 
 int /*<<< orphan*/  FUNC1 (struct powerdomain*,int) ; 
 int FUNC2 (struct powerdomain*) ; 
 int FUNC3 (struct powerdomain*) ; 
 int FUNC4 (struct powerdomain*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct powerdomain *pwrdm, int flag)
{

	int prev, next, state, trace_state = 0;

	if (pwrdm == NULL)
		return -EINVAL;

	state = FUNC4(pwrdm);

	switch (flag) {
	case PWRDM_STATE_NOW:
		prev = pwrdm->state;
		break;
	case PWRDM_STATE_PREV:
		prev = FUNC3(pwrdm);
		if (pwrdm->state != prev)
			pwrdm->state_counter[prev]++;
		if (prev == PWRDM_POWER_RET)
			FUNC0(pwrdm);
		/*
		 * If the power domain did not hit the desired state,
		 * generate a trace event with both the desired and hit states
		 */
		next = FUNC2(pwrdm);
		if (next != prev) {
			trace_state = (PWRDM_TRACE_STATES_FLAG |
				       ((next & OMAP_POWERSTATE_MASK) << 8) |
				       ((prev & OMAP_POWERSTATE_MASK) << 0));
			FUNC6(pwrdm->name,
							  trace_state,
							  FUNC5());
		}
		break;
	default:
		return -EINVAL;
	}

	if (state != prev)
		pwrdm->state_counter[state]++;

	FUNC1(pwrdm, prev);

	pwrdm->state = state;

	return 0;
}