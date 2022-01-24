#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_7__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ tsd_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ tsd_state_nominal_max ; 
 scalar_t__ tsd_state_nominal_recompute ; 

void
FUNC7(tsd_t *tsd, uint8_t new_state) {
	/* Only the tsd module can change the state *to* recompute. */
	FUNC0(new_state != tsd_state_nominal_recompute);
	uint8_t old_state = FUNC2(&tsd->state, ATOMIC_RELAXED);
	if (old_state > tsd_state_nominal_max) {
		/*
		 * Not currently in the nominal list, but it might need to be
		 * inserted there.
		 */
		FUNC0(!FUNC4(tsd));
		FUNC3(&tsd->state, new_state, ATOMIC_RELAXED);
		if (new_state <= tsd_state_nominal_max) {
			FUNC1(tsd);
		}
	} else {
		/*
		 * We're currently nominal.  If the new state is non-nominal,
		 * great; we take ourselves off the list and just enter the new
		 * state.
		 */
		FUNC0(FUNC4(tsd));
		if (new_state > tsd_state_nominal_max) {
			FUNC5(tsd);
			FUNC3(&tsd->state, new_state,
			    ATOMIC_RELAXED);
		} else {
			/*
			 * This is the tricky case.  We're transitioning from
			 * one nominal state to another.  The caller can't know
			 * about any races that are occuring at the same time,
			 * so we always have to recompute no matter what.
			 */
			FUNC6(tsd);
		}
	}
}