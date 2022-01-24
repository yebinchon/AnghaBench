#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cpufreq_policy {int dummy; } ;
struct TYPE_2__ {scalar_t__ driver_data; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__* clock_ratio ; 
 scalar_t__ max_multiplier ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct cpufreq_policy *policy,
		unsigned int best_i)
{

	if (clock_ratio[best_i].driver_data > max_multiplier) {
		FUNC1("invalid target frequency\n");
		return -EINVAL;
	}

	FUNC0(best_i);

	return 0;
}