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
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  opal_trace_depth ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long*) ; 

void FUNC5(unsigned long opcode, unsigned long *args)
{
	unsigned long flags;
	unsigned int *depth;

	FUNC1(flags);

	depth = FUNC3(&opal_trace_depth);

	if (*depth)
		goto out;

	(*depth)++;
	FUNC2();
	FUNC4(opcode, args);
	(*depth)--;

out:
	FUNC0(flags);
}