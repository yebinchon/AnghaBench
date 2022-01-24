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
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  extent_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 size_t LG_PAGE ; 
 int /*<<< orphan*/  WITNESS_RANK_CORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_prof ; 
 int /*<<< orphan*/  curpages ; 
 size_t FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ extent_state_active ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  highpages ; 
 scalar_t__ opt_prof ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(tsdn_t *tsdn, const extent_t *extent) {
	FUNC3(config_prof);
	/* prof_gdump() requirement. */
	FUNC9(FUNC8(tsdn),
	    WITNESS_RANK_CORE, 0);

	if (opt_prof && FUNC5(extent) == extent_state_active) {
		size_t nadd = FUNC4(extent) >> LG_PAGE;
		size_t cur = FUNC1(&curpages, nadd,
		    ATOMIC_RELAXED) + nadd;
		size_t high = FUNC2(&highpages, ATOMIC_RELAXED);
		while (cur > high && !FUNC0(
		    &highpages, &high, cur, ATOMIC_RELAXED, ATOMIC_RELAXED)) {
			/*
			 * Don't refresh cur, because it may have decreased
			 * since this thread lost the highpages update race.
			 * Note that high is updated in case of CAS failure.
			 */
		}
		if (cur > high && FUNC7()) {
			FUNC6(tsdn);
		}
	}
}