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
 int /*<<< orphan*/  ULP_PM_RUN ; 
 int /*<<< orphan*/  ULP_PM_STOP ; 
 int /*<<< orphan*/  ULP_PM_WAIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct cpuidle_device *dev,
			    struct cpuidle_driver *drv, int index)
{
	if (index == 1)
		FUNC1(ULP_PM_WAIT);
	else
		FUNC1(ULP_PM_STOP);

	FUNC0();

	FUNC1(ULP_PM_RUN);

	return index;
}