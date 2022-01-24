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
struct cpuidle_device {scalar_t__ coupled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  cpuidle_devices ; 
 int /*<<< orphan*/  cpuidle_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cpuidle_device* FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC5(unsigned int cpu)
{
	struct cpuidle_device *dev;

	FUNC2(&cpuidle_lock);

	dev = FUNC4(cpuidle_devices, cpu);
	if (dev && dev->coupled) {
		FUNC1(dev->coupled);
		FUNC0(dev->coupled);
	}

	FUNC3(&cpuidle_lock);
	return 0;
}