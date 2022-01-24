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
struct loop_device {int /*<<< orphan*/  lo_disk; } ;
struct kobject {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct kobject* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct loop_device**,int) ; 
 int /*<<< orphan*/  loop_ctl_mutex ; 
 int FUNC3 (struct loop_device**,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int part_shift ; 

__attribute__((used)) static struct kobject *FUNC6(dev_t dev, int *part, void *data)
{
	struct loop_device *lo;
	struct kobject *kobj;
	int err;

	FUNC4(&loop_ctl_mutex);
	err = FUNC3(&lo, FUNC0(dev) >> part_shift);
	if (err < 0)
		err = FUNC2(&lo, FUNC0(dev) >> part_shift);
	if (err < 0)
		kobj = NULL;
	else
		kobj = FUNC1(lo->lo_disk);
	FUNC5(&loop_ctl_mutex);

	*part = 0;
	return kobj;
}