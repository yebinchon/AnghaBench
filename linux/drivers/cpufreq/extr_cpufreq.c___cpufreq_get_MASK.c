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
struct cpufreq_policy {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct cpufreq_policy*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_policy*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC3(struct cpufreq_policy *policy)
{
	if (FUNC2(FUNC1(policy)))
		return 0;

	return FUNC0(policy, true);
}