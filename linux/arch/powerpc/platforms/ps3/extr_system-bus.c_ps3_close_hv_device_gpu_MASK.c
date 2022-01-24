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
struct ps3_system_bus_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; scalar_t__ gpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ usage_hack ; 

__attribute__((used)) static int FUNC4(struct ps3_system_bus_device *dev)
{
	int result;

	FUNC2(&usage_hack.mutex);

	usage_hack.gpu--;
	if (usage_hack.gpu) {
		result = 0;
		goto done;
	}

	result = FUNC1();
	FUNC0(result);

done:
	FUNC3(&usage_hack.mutex);
	return result;
}