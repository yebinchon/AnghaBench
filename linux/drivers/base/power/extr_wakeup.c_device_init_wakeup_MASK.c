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
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int FUNC2 (struct device*) ; 

int FUNC3(struct device *dev, bool enable)
{
	int ret = 0;

	if (!dev)
		return -EINVAL;

	if (enable) {
		FUNC0(dev, true);
		ret = FUNC2(dev);
	} else {
		FUNC1(dev);
		FUNC0(dev, false);
	}

	return ret;
}