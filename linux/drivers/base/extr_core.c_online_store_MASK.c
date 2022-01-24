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
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int FUNC2 () ; 
 int FUNC3 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	bool val;
	int ret;

	ret = FUNC3(buf, &val);
	if (ret < 0)
		return ret;

	ret = FUNC2();
	if (ret)
		return ret;

	ret = val ? FUNC1(dev) : FUNC0(dev);
	FUNC4();
	return ret < 0 ? ret : count;
}