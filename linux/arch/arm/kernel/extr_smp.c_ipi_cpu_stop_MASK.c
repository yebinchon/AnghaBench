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
 scalar_t__ SYSTEM_RUNNING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int) ; 
 int /*<<< orphan*/  stop_lock ; 
 scalar_t__ system_state ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(unsigned int cpu)
{
	if (system_state <= SYSTEM_RUNNING) {
		FUNC5(&stop_lock);
		FUNC4("CPU%u: stopping\n", cpu);
		FUNC1();
		FUNC6(&stop_lock);
	}

	FUNC7(cpu, false);

	FUNC2();
	FUNC3();

	while (1) {
		FUNC0();
		FUNC8();
	}
}