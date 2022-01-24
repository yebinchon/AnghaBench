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
 unsigned int CMCI_STORM_ACTIVE ; 
 scalar_t__ CMCI_STORM_INTERVAL ; 
 void* CMCI_STORM_NONE ; 
 unsigned int CMCI_STORM_THRESHOLD ; 
 int /*<<< orphan*/  INITIAL_CHECK_INTERVAL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmci_backoff_cnt ; 
 int /*<<< orphan*/  cmci_storm_cnt ; 
 int /*<<< orphan*/  cmci_storm_on_cpus ; 
 int /*<<< orphan*/  cmci_storm_state ; 
 int /*<<< orphan*/  cmci_time_stamp ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned long,scalar_t__) ; 

__attribute__((used)) static bool FUNC8(void)
{
	unsigned int cnt = FUNC0(cmci_storm_cnt);
	unsigned long ts = FUNC0(cmci_time_stamp);
	unsigned long now = jiffies;
	int r;

	if (FUNC0(cmci_storm_state) != CMCI_STORM_NONE)
		return true;

	if (FUNC7(now, ts + CMCI_STORM_INTERVAL)) {
		cnt++;
	} else {
		cnt = 1;
		FUNC1(cmci_time_stamp, now);
	}
	FUNC1(cmci_storm_cnt, cnt);

	if (cnt <= CMCI_STORM_THRESHOLD)
		return false;

	FUNC3(false);
	FUNC1(cmci_storm_state, CMCI_STORM_ACTIVE);
	r = FUNC2(1, &cmci_storm_on_cpus);
	FUNC4(CMCI_STORM_INTERVAL);
	FUNC6(cmci_backoff_cnt, INITIAL_CHECK_INTERVAL);

	if (r == 1)
		FUNC5("CMCI storm detected: switching to poll mode\n");
	return true;
}