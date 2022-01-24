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
 int /*<<< orphan*/  hardirq_stack_ptr ; 
 int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

int FUNC2(unsigned int cpu)
{
	if (FUNC1(hardirq_stack_ptr, cpu))
		return 0;
	return FUNC0(cpu);
}