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
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 

__attribute__((used)) static int FUNC6(unsigned int cpu, struct task_struct *idle)
{
	cpu = FUNC0(cpu);

	/*
	 * Force the CPU into reset. The CPU must remain in reset when
	 * the flow controller state is cleared (which will cause the
	 * flow controller to stop driving reset if the CPU has been
	 * power-gated via the flow controller). This will have no
	 * effect on first boot of the CPU since it should already be
	 * in reset.
	 */
	FUNC5(cpu);

	/*
	 * Unhalt the CPU. If the flow controller was used to
	 * power-gate the CPU this will cause the flow controller to
	 * stop driving reset. The CPU will remain in reset because the
	 * clock and reset block is now driving reset.
	 */
	FUNC2(cpu, 0);

	FUNC4(cpu);
	FUNC1(cpu, 0); /* Clear flow controller CSR. */
	FUNC3(cpu);
	return 0;
}