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
typedef  int u32 ;

/* Variables and functions */
 int ETIME ; 
 unsigned long HZ ; 
 scalar_t__ FUNC0 (int) ; 
 int PMSU_EVENT_STATUS_AND_MASK_DFS_DONE ; 
 int PMSU_EVENT_STATUS_AND_MASK_DFS_DONE_MASK ; 
 int FUNC1 (int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  mvebu_pmsu_dfs_request_local ; 
 scalar_t__ pmsu_mp_base ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

int FUNC8(int cpu)
{
	unsigned long timeout;
	int hwcpu = FUNC1(cpu);
	u32 reg;

	/* Clear any previous DFS DONE event */
	reg = FUNC2(pmsu_mp_base + FUNC0(hwcpu));
	reg &= ~PMSU_EVENT_STATUS_AND_MASK_DFS_DONE;
	FUNC7(reg, pmsu_mp_base + FUNC0(hwcpu));

	/* Mask the DFS done interrupt, since we are going to poll */
	reg = FUNC2(pmsu_mp_base + FUNC0(hwcpu));
	reg |= PMSU_EVENT_STATUS_AND_MASK_DFS_DONE_MASK;
	FUNC7(reg, pmsu_mp_base + FUNC0(hwcpu));

	/* Trigger the DFS on the appropriate CPU */
	FUNC3(cpu, mvebu_pmsu_dfs_request_local,
				 NULL, false);

	/* Poll until the DFS done event is generated */
	timeout = jiffies + HZ;
	while (FUNC5(jiffies, timeout)) {
		reg = FUNC2(pmsu_mp_base + FUNC0(hwcpu));
		if (reg & PMSU_EVENT_STATUS_AND_MASK_DFS_DONE)
			break;
		FUNC6(10);
	}

	if (FUNC4(jiffies, timeout))
		return -ETIME;

	/* Restore the DFS mask to its original state */
	reg = FUNC2(pmsu_mp_base + FUNC0(hwcpu));
	reg &= ~PMSU_EVENT_STATUS_AND_MASK_DFS_DONE_MASK;
	FUNC7(reg, pmsu_mp_base + FUNC0(hwcpu));

	return 0;
}