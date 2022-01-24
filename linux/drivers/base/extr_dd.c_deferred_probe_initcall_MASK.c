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

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  deferred_devices ; 
 int /*<<< orphan*/  deferred_devs_fops ; 
 int deferred_probe_timeout ; 
 int /*<<< orphan*/  deferred_probe_timeout_work ; 
 int /*<<< orphan*/  deferred_probe_work ; 
 int driver_deferred_probe_enable ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int initcalls_done ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(void)
{
	deferred_devices = FUNC0("devices_deferred", 0444, NULL,
					       NULL, &deferred_devs_fops);

	driver_deferred_probe_enable = true;
	FUNC1();
	/* Sort as many dependencies as possible before exiting initcalls */
	FUNC2(&deferred_probe_work);
	initcalls_done = true;

	/*
	 * Trigger deferred probe again, this time we won't defer anything
	 * that is optional
	 */
	FUNC1();
	FUNC2(&deferred_probe_work);

	if (deferred_probe_timeout > 0) {
		FUNC3(&deferred_probe_timeout_work,
			deferred_probe_timeout * HZ);
	}
	return 0;
}