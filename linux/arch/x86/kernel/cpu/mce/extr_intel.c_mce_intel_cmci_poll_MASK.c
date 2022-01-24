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

/* Variables and functions */
 scalar_t__ CMCI_STORM_NONE ; 
 int /*<<< orphan*/  INITIAL_CHECK_INTERVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmci_backoff_cnt ; 
 int /*<<< orphan*/  cmci_storm_state ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mce_banks_owned ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC5(void)
{
	if (FUNC0(cmci_storm_state) == CMCI_STORM_NONE)
		return false;

	/*
	 * Reset the counter if we've logged an error in the last poll
	 * during the storm.
	 */
	if (FUNC1(0, FUNC3(&mce_banks_owned)))
		FUNC4(cmci_backoff_cnt, INITIAL_CHECK_INTERVAL);
	else
		FUNC2(cmci_backoff_cnt);

	return true;
}