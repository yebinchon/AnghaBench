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
struct cpufreq_driver {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 struct cpufreq_driver* cpufreq_driver ; 
 int /*<<< orphan*/  cpufreq_driver_lock ; 
 int /*<<< orphan*/  cpufreq_interface ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  hp_online ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC8(struct cpufreq_driver *driver)
{
	unsigned long flags;

	if (!cpufreq_driver || (driver != cpufreq_driver))
		return -EINVAL;

	FUNC3("unregistering driver %s\n", driver->name);

	/* Protect against concurrent cpu hotplug */
	FUNC1();
	FUNC5(&cpufreq_interface);
	FUNC4();
	FUNC0(hp_online);

	FUNC6(&cpufreq_driver_lock, flags);

	cpufreq_driver = NULL;

	FUNC7(&cpufreq_driver_lock, flags);
	FUNC2();

	return 0;
}