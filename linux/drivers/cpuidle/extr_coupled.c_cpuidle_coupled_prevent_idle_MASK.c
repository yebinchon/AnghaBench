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
struct cpuidle_coupled {int /*<<< orphan*/  prevent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct cpuidle_coupled*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct cpuidle_coupled*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct cpuidle_coupled *coupled)
{
	int cpu = FUNC3();

	/* Force all cpus out of the waiting loop. */
	coupled->prevent++;
	FUNC2(cpu, coupled);
	FUNC4();
	while (!FUNC1(coupled))
		FUNC0();
}