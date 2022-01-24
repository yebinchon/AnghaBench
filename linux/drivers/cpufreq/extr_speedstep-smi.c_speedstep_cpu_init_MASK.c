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
struct cpufreq_policy {scalar_t__ cpu; TYPE_1__* freq_table; } ;
struct TYPE_2__ {unsigned int frequency; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 size_t SPEEDSTEP_HIGH ; 
 size_t SPEEDSTEP_LOW ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* speedstep_freqs ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int*,unsigned int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  speedstep_processor ; 
 int /*<<< orphan*/  speedstep_set_state ; 
 int FUNC2 (unsigned int*,unsigned int*) ; 
 int FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct cpufreq_policy *policy)
{
	int result;
	unsigned int *low, *high;

	/* capability check */
	if (policy->cpu != 0)
		return -ENODEV;

	result = FUNC3();
	if (result) {
		FUNC0("fails in acquiring ownership of a SMI interface.\n");
		return -EINVAL;
	}

	/* detect low and high frequency */
	low = &speedstep_freqs[SPEEDSTEP_LOW].frequency;
	high = &speedstep_freqs[SPEEDSTEP_HIGH].frequency;

	result = FUNC2(low, high);
	if (result) {
		/* fall back to speedstep_lib.c dection mechanism:
		 * try both states out */
		FUNC0("could not detect low and high frequencies "
				"by SMI call.\n");
		result = FUNC1(speedstep_processor,
				low, high,
				NULL,
				&speedstep_set_state);

		if (result) {
			FUNC0("could not detect two different speeds"
					" -- aborting.\n");
			return result;
		} else
			FUNC0("workaround worked.\n");
	}

	policy->freq_table = speedstep_freqs;

	return 0;
}