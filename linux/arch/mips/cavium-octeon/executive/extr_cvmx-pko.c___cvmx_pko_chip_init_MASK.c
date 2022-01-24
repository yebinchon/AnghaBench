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
typedef  int uint64_t ;

/* Variables and functions */
 int CVMX_PKO_MAX_OUTPUT_QUEUES ; 
 int /*<<< orphan*/  CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID ; 
 int /*<<< orphan*/  OCTEON_CN68XX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int const*) ; 

__attribute__((used)) static void FUNC4(void)
{
	int i;

	if (FUNC0(OCTEON_CN68XX)) {
		FUNC1();
		FUNC2();
		return;
	}

	/*
	 * Initialize queues
	 */
	for (i = 0; i < CVMX_PKO_MAX_OUTPUT_QUEUES; i++) {
		const uint64_t priority = 8;

		FUNC3(CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID, i, 1,
				     &priority);
	}
}