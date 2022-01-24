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
struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WAIT_CLOCKED ; 
 int /*<<< orphan*/  WAIT_UNCLOCKED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  cpuidle_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ num_idle_cpus ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct cpuidle_device *dev,
			    struct cpuidle_driver *drv, int index)
{
	FUNC3(&cpuidle_lock);
	if (++num_idle_cpus == FUNC2())
		FUNC1(WAIT_UNCLOCKED);
	FUNC4(&cpuidle_lock);

	FUNC0();

	FUNC3(&cpuidle_lock);
	if (num_idle_cpus-- == FUNC2())
		FUNC1(WAIT_CLOCKED);
	FUNC4(&cpuidle_lock);

	return index;
}