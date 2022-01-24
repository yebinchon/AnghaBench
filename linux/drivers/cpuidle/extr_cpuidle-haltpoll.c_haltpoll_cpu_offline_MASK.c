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
struct cpuidle_device {scalar_t__ registered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpuidle_device*) ; 
 int /*<<< orphan*/  haltpoll_cpuidle_devices ; 
 struct cpuidle_device* FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC3(unsigned int cpu)
{
	struct cpuidle_device *dev;

	dev = FUNC2(haltpoll_cpuidle_devices, cpu);
	if (dev->registered) {
		FUNC0(cpu);
		FUNC1(dev);
	}

	return 0;
}