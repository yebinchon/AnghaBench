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
struct s3c2416_data {int disable_dvs; scalar_t__ is_dvs; } ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FREQ_SLEEP ; 
 int NOTIFY_BAD ; 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpufreq_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct s3c2416_data s3c2416_cpufreq ; 

__attribute__((used)) static int FUNC5(struct notifier_block *this,
					       unsigned long event, void *ptr)
{
	struct s3c2416_data *s3c_freq = &s3c2416_cpufreq;
	int ret;

	FUNC2(&cpufreq_lock);

	/* disable further changes */
	s3c_freq->disable_dvs = 1;

	FUNC3(&cpufreq_lock);

	/* some boards don't reconfigure the regulator on reboot, which
	 * could lead to undervolting the cpu when the clock is reset.
	 * Therefore we always leave the DVS mode on reboot.
	 */
	if (s3c_freq->is_dvs) {
		FUNC4("cpufreq: leave dvs on reboot\n");
		ret = FUNC1(FUNC0(0), FREQ_SLEEP, 0);
		if (ret < 0)
			return NOTIFY_BAD;
	}

	return NOTIFY_DONE;
}