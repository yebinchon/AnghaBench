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
 unsigned long FUNC0 (unsigned int const*) ; 
 unsigned long FUNC1 (unsigned int const*) ; 
 scalar_t__ FUNC2 (unsigned int const) ; 
 scalar_t__ FUNC3 (unsigned int const) ; 

unsigned long FUNC4(const unsigned int *instr)
{
	if (FUNC3(*instr))
		return FUNC1(instr);
	else if (FUNC2(*instr))
		return FUNC0(instr);

	return 0;
}