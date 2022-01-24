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
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct cpuidle_device*) ; 
 int FUNC1 (struct cpuidle_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpuidle_device*) ; 
 int FUNC3 (struct cpuidle_device*) ; 
 int FUNC4 (struct cpuidle_device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  cpuidle_lock ; 
 int /*<<< orphan*/  FUNC6 (struct cpuidle_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct cpuidle_device *dev)
{
	int ret = -EBUSY;

	if (!dev)
		return -EINVAL;

	FUNC7(&cpuidle_lock);

	if (dev->registered)
		goto out_unlock;

	FUNC0(dev);

	ret = FUNC1(dev);
	if (ret)
		goto out_unlock;

	ret = FUNC3(dev);
	if (ret)
		goto out_unregister;

	ret = FUNC4(dev);
	if (ret)
		goto out_sysfs;

	FUNC5();

out_unlock:
	FUNC8(&cpuidle_lock);

	return ret;

out_sysfs:
	FUNC6(dev);
out_unregister:
	FUNC2(dev);
	goto out_unlock;
}