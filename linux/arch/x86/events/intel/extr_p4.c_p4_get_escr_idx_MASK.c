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
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int P4_ESCR_MSR_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned int) ; 
 unsigned int* p4_escr_table ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(unsigned int addr)
{
	unsigned int idx = FUNC0(addr);

	if (FUNC2(idx >= P4_ESCR_MSR_TABLE_SIZE	||
			!p4_escr_table[idx]		||
			p4_escr_table[idx] != addr)) {
		FUNC1(1, "P4 PMU: Wrong address passed: %x\n", addr);
		return -1;
	}

	return idx;
}