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
struct task_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ THREAD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned long FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long) ; 
 unsigned long secondary_ccr ; 
 unsigned long secondary_hint ; 
 scalar_t__ secondary_stack ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct task_struct*) ; 

int FUNC6(unsigned int cpu, struct task_struct *tidle)
{
	unsigned long mask = 1 << cpu;

	secondary_stack =
		(unsigned int) FUNC5(tidle) + THREAD_SIZE - 8;
	secondary_hint = FUNC2("cr31");
	secondary_ccr  = FUNC2("cr18");

	/*
	 * Because other CPUs are in reset status, we must flush data
	 * from cache to out and secondary CPUs use them in
	 * csky_start_secondary(void)
	 */
	FUNC3("cr17", 0x22);

	if (mask & FUNC2("cr<29, 0>")) {
		FUNC4(FUNC1(cpu));
	} else {
		/* Enable cpu in SMP reset ctrl reg */
		mask |= FUNC2("cr<29, 0>");
		FUNC3("cr<29, 0>", mask);
	}

	/* Wait for the cpu online */
	while (!FUNC0(cpu));

	secondary_stack = 0;

	return 0;
}