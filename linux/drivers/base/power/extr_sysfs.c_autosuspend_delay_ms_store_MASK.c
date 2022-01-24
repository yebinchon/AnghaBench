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
struct device_attribute {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  use_autosuspend; } ;
struct device {TYPE_1__ power; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t EIO ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,long) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t n)
{
	long delay;

	if (!dev->power.use_autosuspend)
		return -EIO;

	if (FUNC2(buf, 10, &delay) != 0 || delay != (int) delay)
		return -EINVAL;

	FUNC0(dev);
	FUNC3(dev, delay);
	FUNC1(dev);
	return n;
}