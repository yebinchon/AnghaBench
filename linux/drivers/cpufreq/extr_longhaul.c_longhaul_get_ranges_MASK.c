#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int frequency; unsigned int driver_data; } ;

/* Variables and functions */
 unsigned int CPUFREQ_TABLE_END ; 
#define  CPU_NEHEMIAH 129 
#define  CPU_NEHEMIAH_C 128 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (unsigned int) ; 
 int cpu_model ; 
 int /*<<< orphan*/  fsb ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int highest_speed ; 
 TYPE_1__* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 () ; 
 unsigned int longhaul_index ; 
 TYPE_1__* longhaul_table ; 
 int lowest_speed ; 
 int maxmult ; 
 int minmult ; 
 int* mults ; 
 int numscales ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC9(void)
{
	unsigned int i, j, k = 0;
	unsigned int ratio;
	int mult;

	/* Get current frequency */
	mult = FUNC4();
	if (mult == -1) {
		FUNC6("Invalid (reserved) multiplier!\n");
		return -EINVAL;
	}
	fsb = FUNC1(mult);
	if (fsb == 0) {
		FUNC6("Invalid (reserved) FSB!\n");
		return -EINVAL;
	}
	/* Get max multiplier - as we always did.
	 * Longhaul MSR is useful only when voltage scaling is enabled.
	 * C3 is booting at max anyway. */
	maxmult = mult;
	/* Get min multiplier */
	switch (cpu_model) {
	case CPU_NEHEMIAH:
		minmult = 50;
		break;
	case CPU_NEHEMIAH_C:
		minmult = 40;
		break;
	default:
		minmult = 30;
		break;
	}

	FUNC5("MinMult:%d.%dx MaxMult:%d.%dx\n",
		 minmult/10, minmult%10, maxmult/10, maxmult%10);

	highest_speed = FUNC0(maxmult);
	lowest_speed = FUNC0(minmult);
	FUNC5("FSB:%dMHz  Lowest speed: %s   Highest speed:%s\n", fsb,
		 FUNC7(lowest_speed/1000),
		 FUNC7(highest_speed/1000));

	if (lowest_speed == highest_speed) {
		FUNC6("highestspeed == lowest, aborting\n");
		return -EINVAL;
	}
	if (lowest_speed > highest_speed) {
		FUNC6("nonsense! lowest (%d > %d) !\n",
			lowest_speed, highest_speed);
		return -EINVAL;
	}

	longhaul_table = FUNC2(numscales + 1, sizeof(*longhaul_table),
				 GFP_KERNEL);
	if (!longhaul_table)
		return -ENOMEM;

	for (j = 0; j < numscales; j++) {
		ratio = mults[j];
		if (ratio == -1)
			continue;
		if (ratio > maxmult || ratio < minmult)
			continue;
		longhaul_table[k].frequency = FUNC0(ratio);
		longhaul_table[k].driver_data	= j;
		k++;
	}
	if (k <= 1) {
		FUNC3(longhaul_table);
		return -ENODEV;
	}
	/* Sort */
	for (j = 0; j < k - 1; j++) {
		unsigned int min_f, min_i;
		min_f = longhaul_table[j].frequency;
		min_i = j;
		for (i = j + 1; i < k; i++) {
			if (longhaul_table[i].frequency < min_f) {
				min_f = longhaul_table[i].frequency;
				min_i = i;
			}
		}
		if (min_i != j) {
			FUNC8(longhaul_table[j].frequency,
			     longhaul_table[min_i].frequency);
			FUNC8(longhaul_table[j].driver_data,
			     longhaul_table[min_i].driver_data);
		}
	}

	longhaul_table[k].frequency = CPUFREQ_TABLE_END;

	/* Find index we are running on */
	for (j = 0; j < k; j++) {
		if (mults[longhaul_table[j].driver_data & 0x1f] == mult) {
			longhaul_index = j;
			break;
		}
	}
	return 0;
}