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
struct cpuidle_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpuidle_devices ; 
 int /*<<< orphan*/  FUNC0 (struct cpuidle_device*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct cpuidle_device* FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC5(unsigned int cpu)
{
	struct cpuidle_device *dev = FUNC4(cpuidle_devices, cpu);

	if (dev && FUNC1()) {
		FUNC2();
		FUNC0(dev);
		FUNC3();
	}
	return 0;
}