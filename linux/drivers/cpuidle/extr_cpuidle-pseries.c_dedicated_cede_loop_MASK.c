#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;
struct TYPE_2__ {int donate_dedicated_cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct cpuidle_device *dev,
				struct cpuidle_driver *drv,
				int index)
{
	unsigned long in_purr;

	FUNC4(&in_purr);
	FUNC2()->donate_dedicated_cpu = 1;

	FUNC0();
	FUNC1();

	FUNC5();
	FUNC2()->donate_dedicated_cpu = 0;

	FUNC3(in_purr);

	return index;
}