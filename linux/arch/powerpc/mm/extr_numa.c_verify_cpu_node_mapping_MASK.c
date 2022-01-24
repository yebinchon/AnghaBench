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
 int /*<<< orphan*/  FUNC0 (int,char*,int,int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int threads_per_core ; 

__attribute__((used)) static void FUNC4(int cpu, int node)
{
	int base, sibling, i;

	/* Verify that all the threads in the core belong to the same node */
	base = FUNC1(cpu);

	for (i = 0; i < threads_per_core; i++) {
		sibling = base + i;

		if (sibling == cpu || FUNC2(sibling))
			continue;

		if (FUNC3(sibling) != node) {
			FUNC0(1, "CPU thread siblings %d and %d don't belong"
				" to the same node!\n", cpu, sibling);
			break;
		}
	}
}