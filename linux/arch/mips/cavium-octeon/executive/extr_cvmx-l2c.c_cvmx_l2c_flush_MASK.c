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
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int CVMX_L2C_IDX_ADDR_SHIFT ; 
 int CVMX_L2C_TAG_ADDR_ALIAS_SHIFT ; 
 int /*<<< orphan*/  CVMX_MIPS_SPACE_XKPHYS ; 
 int /*<<< orphan*/  OCTEON_CN6XXX ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 

void FUNC6(void)
{
	uint64_t assoc, set;
	uint64_t n_assoc, n_set;

	n_set = FUNC5();
	n_assoc = FUNC4();

	if (FUNC2(OCTEON_CN6XXX)) {
		uint64_t address;
		/* These may look like constants, but they aren't... */
		int assoc_shift = CVMX_L2C_TAG_ADDR_ALIAS_SHIFT;
		int set_shift = CVMX_L2C_IDX_ADDR_SHIFT;

		for (set = 0; set < n_set; set++) {
			for (assoc = 0; assoc < n_assoc; assoc++) {
				address = FUNC0(CVMX_MIPS_SPACE_XKPHYS,
						       (assoc << assoc_shift) | (set << set_shift));
				FUNC1(address, 0);
			}
		}
	} else {
		for (set = 0; set < n_set; set++)
			for (assoc = 0; assoc < n_assoc; assoc++)
				FUNC3(assoc, set);
	}
}