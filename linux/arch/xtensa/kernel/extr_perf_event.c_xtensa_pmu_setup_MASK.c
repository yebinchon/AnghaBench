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
 unsigned int XCHAL_NUM_PERF_COUNTERS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  XTENSA_PMU_PMG ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(int cpu)
{
	unsigned i;

	FUNC3(0, XTENSA_PMU_PMG);
	for (i = 0; i < XCHAL_NUM_PERF_COUNTERS; ++i) {
		FUNC3(0, FUNC0(i));
		FUNC3(FUNC2(FUNC1(i)), FUNC1(i));
	}
	return 0;
}