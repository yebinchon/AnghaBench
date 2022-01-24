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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct brcmstb_gisb_arb_device {int /*<<< orphan*/  lock; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARB_TIMER ; 
 int EINVAL ; 
 struct brcmstb_gisb_arb_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmstb_gisb_arb_device*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				    struct device_attribute *attr,
				    const char *buf, size_t count)
{
	struct brcmstb_gisb_arb_device *gdev = FUNC0(dev);
	int val, ret;

	ret = FUNC2(buf, 10, &val);
	if (ret < 0)
		return ret;

	if (val == 0 || val >= 0xffffffff)
		return -EINVAL;

	FUNC3(&gdev->lock);
	FUNC1(gdev, val, ARB_TIMER);
	FUNC4(&gdev->lock);

	return count;
}