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
struct TYPE_2__ {int min_freq; int max_freq; } ;
struct cpufreq_policy {scalar_t__ cpu; int min; int max; TYPE_1__ cpuinfo; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int NFORCE2_MIN_FSB ; 
 int NFORCE2_SAFE_DISTANCE ; 
 unsigned int cpu_khz ; 
 int fid ; 
 int max_fsb ; 
 int min_fsb ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct cpufreq_policy *policy)
{
	unsigned int fsb;
	unsigned int rfid;

	/* capability check */
	if (policy->cpu != 0)
		return -ENODEV;

	/* Get current FSB */
	fsb = FUNC0(0);

	if (!fsb)
		return -EIO;

	/* FIX: Get FID from CPU */
	if (!fid) {
		if (!cpu_khz) {
			FUNC2("cpu_khz not set, can't calculate multiplier!\n");
			return -ENODEV;
		}

		fid = cpu_khz / (fsb * 100);
		rfid = fid % 5;

		if (rfid) {
			if (rfid > 2)
				fid += 5 - rfid;
			else
				fid -= rfid;
		}
	}

	FUNC1("FSB currently at %i MHz, FID %d.%d\n",
		fsb, fid / 10, fid % 10);

	/* Set maximum FSB to FSB at boot time */
	max_fsb = FUNC0(1);

	if (!max_fsb)
		return -EIO;

	if (!min_fsb)
		min_fsb = max_fsb - NFORCE2_SAFE_DISTANCE;

	if (min_fsb < NFORCE2_MIN_FSB)
		min_fsb = NFORCE2_MIN_FSB;

	/* cpuinfo and default policy values */
	policy->min = policy->cpuinfo.min_freq = min_fsb * fid * 100;
	policy->max = policy->cpuinfo.max_freq = max_fsb * fid * 100;

	return 0;
}