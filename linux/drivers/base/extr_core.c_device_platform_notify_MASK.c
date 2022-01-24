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
typedef  enum kobject_action { ____Placeholder_kobject_action } kobject_action ;

/* Variables and functions */
 int KOBJ_ADD ; 
 int KOBJ_REMOVE ; 
 int FUNC0 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct device*,int) ; 

__attribute__((used)) static int
FUNC4(struct device *dev, enum kobject_action action)
{
	int ret;

	ret = FUNC0(dev, action);
	if (ret)
		return ret;

	ret = FUNC3(dev, action);
	if (ret)
		return ret;

	if (&platform_notify && action == KOBJ_ADD)
		FUNC1(dev);
	else if (&platform_notify_remove && action == KOBJ_REMOVE)
		FUNC2(dev);
	return 0;
}