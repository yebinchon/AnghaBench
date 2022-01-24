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
struct cpuidle_driver {scalar_t__ refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cpuidle_driver_lock ; 
 struct cpuidle_driver* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
	struct cpuidle_driver *drv;

	FUNC2(&cpuidle_driver_lock);

	drv = FUNC1();
	if (drv && !FUNC0(drv->refcnt <= 0))
		drv->refcnt--;

	FUNC3(&cpuidle_driver_lock);
}