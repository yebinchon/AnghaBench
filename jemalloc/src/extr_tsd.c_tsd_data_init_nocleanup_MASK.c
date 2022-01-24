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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int* FUNC3 (int /*<<< orphan*/ *) ; 
 int* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ tsd_state_minimal_initialized ; 
 scalar_t__ tsd_state_reincarnated ; 
 int* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC8(tsd_t *tsd) {
	FUNC0(FUNC6(tsd) == tsd_state_reincarnated ||
	    FUNC6(tsd) == tsd_state_minimal_initialized);
	/*
	 * During reincarnation, there is no guarantee that the cleanup function
	 * will be called (deallocation may happen after all tsd destructors).
	 * We set up tsd in a way that no cleanup is needed.
	 */
	FUNC2(FUNC5(tsd));
	*FUNC3(tsd) = true;
	*FUNC7(tsd) = false;
	*FUNC4(tsd) = 1;
	FUNC1(tsd);

	return false;
}