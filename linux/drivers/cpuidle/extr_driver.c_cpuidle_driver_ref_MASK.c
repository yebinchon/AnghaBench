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
struct cpuidle_driver {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpuidle_driver_lock ; 
 struct cpuidle_driver* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct cpuidle_driver *FUNC3(void)
{
	struct cpuidle_driver *drv;

	FUNC1(&cpuidle_driver_lock);

	drv = FUNC0();
	if (drv)
		drv->refcnt++;

	FUNC2(&cpuidle_driver_lock);
	return drv;
}