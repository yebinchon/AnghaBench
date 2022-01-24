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
 int /*<<< orphan*/  FUNC0 (int,struct cpuidle_coupled*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct cpuidle_coupled *coupled)
{
	int cpu = FUNC1();

	/*
	 * Write barrier ensures readers see the new online_count when they
	 * see prevent == 0.
	 */
	FUNC3();
	coupled->prevent--;
	/* Force cpus out of the prevent loop. */
	FUNC0(cpu, coupled);
	FUNC2();
}