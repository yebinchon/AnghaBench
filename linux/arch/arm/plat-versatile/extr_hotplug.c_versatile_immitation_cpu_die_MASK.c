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
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

void FUNC4(unsigned int cpu, unsigned int actrl_mask)
{
	int spurious = 0;

	FUNC2(actrl_mask);
	FUNC1(cpu, &spurious);
	FUNC3(actrl_mask);

	if (spurious)
		FUNC0("CPU%u: %u spurious wakeup calls\n", cpu, spurious);
}