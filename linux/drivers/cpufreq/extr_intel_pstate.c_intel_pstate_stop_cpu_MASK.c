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
struct cpufreq_policy {int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 scalar_t__ hwp_active ; 
 int /*<<< orphan*/  FUNC0 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct cpufreq_policy *policy)
{
	FUNC4("CPU %d exiting\n", policy->cpu);

	FUNC1(policy->cpu);
	if (hwp_active) {
		FUNC3(policy);
		FUNC2(policy->cpu);
	} else {
		FUNC0(policy);
	}
}