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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_L2C_SPAR4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCTEON_CN63XX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

int FUNC5(uint32_t mask)
{
	uint32_t valid_mask;

	valid_mask = (0x1 << FUNC2()) - 1;
	mask &= valid_mask;

	/* A UMSK setting which blocks all L2C Ways is an error on some chips */
	if (mask == valid_mask	&& !FUNC1(OCTEON_CN63XX))
		return -1;

	if (FUNC1(OCTEON_CN63XX))
		FUNC4(FUNC0(0), mask);
	else
		FUNC4(CVMX_L2C_SPAR4,
			       (FUNC3(CVMX_L2C_SPAR4) & ~0xFF) | mask);
	return 0;
}