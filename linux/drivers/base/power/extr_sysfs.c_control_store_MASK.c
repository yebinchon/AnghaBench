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
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  ctrl_auto ; 
 int /*<<< orphan*/  ctrl_on ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct device * dev, struct device_attribute *attr,
			     const char * buf, size_t n)
{
	FUNC0(dev);
	if (FUNC4(buf, ctrl_auto))
		FUNC2(dev);
	else if (FUNC4(buf, ctrl_on))
		FUNC3(dev);
	else
		n = -EINVAL;
	FUNC1(dev);
	return n;
}