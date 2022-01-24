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
typedef  int /*<<< orphan*/  tsd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ tsd_booted ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ tsd_state_minimal_initialized ; 
 scalar_t__ tsd_state_nominal ; 
 scalar_t__ tsd_state_nominal_recompute ; 
 scalar_t__ tsd_state_nominal_slow ; 
 scalar_t__ tsd_state_purgatory ; 
 scalar_t__ tsd_state_reincarnated ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ tsd_state_uninitialized ; 

tsd_t *
FUNC10(tsd_t *tsd, bool minimal) {
	FUNC0(!FUNC4(tsd));

	if (FUNC8(tsd) == tsd_state_nominal_slow) {
		/*
		 * On slow path but no work needed.  Note that we can't
		 * necessarily *assert* that we're slow, because we might be
		 * slow because of an asynchronous modification to global state,
		 * which might be asynchronously modified *back*.
		 */
	} else if (FUNC8(tsd) == tsd_state_nominal_recompute) {
		FUNC7(tsd);
	} else if (FUNC8(tsd) == tsd_state_uninitialized) {
		if (!minimal) {
			if (tsd_booted) {
				FUNC9(tsd, tsd_state_nominal);
				FUNC7(tsd);
				/* Trigger cleanup handler registration. */
				FUNC6(tsd);
				FUNC2(tsd);
			}
		} else {
			FUNC9(tsd, tsd_state_minimal_initialized);
			FUNC6(tsd);
			FUNC3(tsd);
		}
	} else if (FUNC8(tsd) == tsd_state_minimal_initialized) {
		if (!minimal) {
			/* Switch to fully initialized. */
			FUNC9(tsd, tsd_state_nominal);
			FUNC0(*FUNC5(tsd) >= 1);
			(*FUNC5(tsd))--;
			FUNC7(tsd);
			FUNC2(tsd);
		} else {
			FUNC1(tsd);
		}
	} else if (FUNC8(tsd) == tsd_state_purgatory) {
		FUNC9(tsd, tsd_state_reincarnated);
		FUNC6(tsd);
		FUNC3(tsd);
	} else {
		FUNC0(FUNC8(tsd) == tsd_state_reincarnated);
	}

	return tsd;
}