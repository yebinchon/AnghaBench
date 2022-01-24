#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  devnode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* pseudo_lock_class ; 
 int /*<<< orphan*/  pseudo_lock_dev_fops ; 
 int /*<<< orphan*/  pseudo_lock_devnode ; 
 int pseudo_lock_major ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

int FUNC5(void)
{
	int ret;

	ret = FUNC3(0, "pseudo_lock", &pseudo_lock_dev_fops);
	if (ret < 0)
		return ret;

	pseudo_lock_major = ret;

	pseudo_lock_class = FUNC2(THIS_MODULE, "pseudo_lock");
	if (FUNC0(pseudo_lock_class)) {
		ret = FUNC1(pseudo_lock_class);
		FUNC4(pseudo_lock_major, "pseudo_lock");
		return ret;
	}

	pseudo_lock_class->devnode = pseudo_lock_devnode;
	return 0;
}