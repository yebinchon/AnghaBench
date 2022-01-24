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
#define  KOBJ_ADD 129 
#define  KOBJ_REMOVE 128 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 

int FUNC2(struct device *dev, enum kobject_action action)
{
	switch (action) {
	case KOBJ_ADD:
		FUNC0(dev);
		break;
	case KOBJ_REMOVE:
		FUNC1(dev);
		break;
	default:
		break;
	}
	return 0;
}