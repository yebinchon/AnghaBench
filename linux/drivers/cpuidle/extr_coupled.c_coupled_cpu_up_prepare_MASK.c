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
 int /*<<< orphan*/  cpuidle_devices ; 
 int /*<<< orphan*/  cpuidle_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cpuidle_device* FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(unsigned int cpu)
{
	struct cpuidle_device *dev;

	FUNC1(&cpuidle_lock);

	dev = FUNC3(cpuidle_devices, cpu);
	if (dev && dev->coupled)
		FUNC0(dev->coupled);

	FUNC2(&cpuidle_lock);
	return 0;
}