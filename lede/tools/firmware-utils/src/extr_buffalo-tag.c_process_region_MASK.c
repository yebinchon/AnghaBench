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
 int FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int num_regions ; 
 char* region_code ; 
 int region_mask ; 
 char** region_table ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(char *reg)
{
	int i;

	if (FUNC3(reg) != 2) {
		FUNC1("invalid region code '%s'", reg);
		return -1;
	}

	if (FUNC2(reg, "M_") == 0) {
		region_code = reg;
		region_mask |= ~0;
		num_regions = 32;
		return 0;
	}

	for (i = 0; i < FUNC0(region_table); i++)
		if (FUNC2(reg, region_table[i]) == 0) {
			region_code = reg;
			region_mask |= 1 << i;
			num_regions++;
			return 0;
		}

	FUNC1("unknown region code '%s'", reg);
	return -1;
}