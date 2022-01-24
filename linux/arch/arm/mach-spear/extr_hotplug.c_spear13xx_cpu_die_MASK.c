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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int*) ; 

void FUNC4(unsigned int cpu)
{
	int spurious = 0;

	/*
	 * we're ready for shutdown now, so do it
	 */
	FUNC0();
	FUNC3(cpu, &spurious);

	/*
	 * bring this CPU back into the world of cache
	 * coherency, and then restore interrupts
	 */
	FUNC1();

	if (spurious)
		FUNC2("CPU%u: %u spurious wakeup calls\n", cpu, spurious);
}