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
typedef  int /*<<< orphan*/  tsd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ config_prof ; 
 int lg_prof_sample ; 
 scalar_t__ opt_prof ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(tsd_t *tsd) {
	FUNC0(config_prof && opt_prof);
	FUNC0(FUNC4(tsd) == 0U);
	uint64_t last_event = FUNC7(tsd);
	uint64_t last_sample_event = FUNC5(tsd);
	FUNC6(tsd, last_event);
	if (FUNC3(FUNC9(tsd), last_event - last_sample_event)) {
		FUNC2(FUNC9(tsd));
	}
	if (!FUNC1()) {
		/*
		 * If prof_active is off, we reset prof_sample_event_wait to be
		 * the sample interval when it drops to 0, so that there won't
		 * be excessive routings to the slow path, and that when
		 * prof_active is turned on later, the counting for sampling
		 * can immediately resume as normal.
		 */
		FUNC8(tsd,
		    (uint64_t)(1 << lg_prof_sample));
	}
}