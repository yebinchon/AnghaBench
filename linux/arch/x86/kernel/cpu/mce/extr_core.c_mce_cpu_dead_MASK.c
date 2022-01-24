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
 int /*<<< orphan*/  cpuhp_tasks_frozen ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

__attribute__((used)) static int FUNC2(unsigned int cpu)
{
	FUNC1(cpu);

	/* intentionally ignoring frozen here */
	if (!cpuhp_tasks_frozen)
		FUNC0();
	return 0;
}