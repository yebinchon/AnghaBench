#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {TYPE_1__* bus; scalar_t__ id; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  dev_attr_hibernate ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__ suspend_subsys ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	int rc;

	if ((rc = FUNC2(&suspend_subsys, NULL)))
		return rc;

	dev->id = 0;
	dev->bus = &suspend_subsys;

	if ((rc = FUNC1(suspend_subsys.dev_root, &dev_attr_hibernate)))
		goto subsys_unregister;

	return 0;

subsys_unregister:
	FUNC0(&suspend_subsys);
	return rc;
}