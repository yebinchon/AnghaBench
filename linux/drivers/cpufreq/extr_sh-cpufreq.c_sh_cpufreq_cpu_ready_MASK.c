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
struct device {int dummy; } ;
struct cpufreq_policy {int min; int max; int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int,int,int) ; 
 struct device* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct cpufreq_policy *policy)
{
	struct device *dev = FUNC1(policy->cpu);

	FUNC0(dev, "CPU Frequencies - Minimum %u.%03u MHz, "
	       "Maximum %u.%03u MHz.\n",
	       policy->min / 1000, policy->min % 1000,
	       policy->max / 1000, policy->max % 1000);
}