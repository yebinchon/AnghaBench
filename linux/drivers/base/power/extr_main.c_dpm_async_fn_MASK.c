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
struct TYPE_2__ {int /*<<< orphan*/  completion; } ;
struct device {TYPE_1__ power; } ;
typedef  int /*<<< orphan*/  async_func_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct device *dev, async_func_t func)
{
	FUNC3(&dev->power.completion);

	if (FUNC2(dev)) {
		FUNC1(dev);
		FUNC0(func, dev);
		return true;
	}

	return false;
}