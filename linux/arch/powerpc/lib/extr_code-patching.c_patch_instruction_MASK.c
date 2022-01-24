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
 int FUNC0 (unsigned int*,unsigned int) ; 
 scalar_t__ init_mem_is_free ; 
 scalar_t__ FUNC1 (unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int*) ; 

int FUNC3(unsigned int *addr, unsigned int instr)
{
	/* Make sure we aren't patching a freed init section */
	if (init_mem_is_free && FUNC1(addr, 4)) {
		FUNC2("Skipping init section patching addr: 0x%px\n", addr);
		return 0;
	}
	return FUNC0(addr, instr);
}