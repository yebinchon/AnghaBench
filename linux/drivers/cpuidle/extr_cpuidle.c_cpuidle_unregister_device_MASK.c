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
 int /*<<< orphan*/  FUNC0 (struct cpuidle_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpuidle_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpuidle_device*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct cpuidle_device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct cpuidle_device *dev)
{
	if (!dev || dev->registered == 0)
		return;

	FUNC3();

	FUNC2(dev);

	FUNC4(dev);

	FUNC0(dev);

	FUNC1(dev);

	FUNC5();
}