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
struct kobject {int dummy; } ;
struct brd_device {int /*<<< orphan*/  brd_disk; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  brd_devices_mutex ; 
 struct brd_device* FUNC1 (int,int*) ; 
 struct kobject* FUNC2 (int /*<<< orphan*/ ) ; 
 int max_part ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct kobject *FUNC5(dev_t dev, int *part, void *data)
{
	struct brd_device *brd;
	struct kobject *kobj;
	bool new;

	FUNC3(&brd_devices_mutex);
	brd = FUNC1(FUNC0(dev) / max_part, &new);
	kobj = brd ? FUNC2(brd->brd_disk) : NULL;
	FUNC4(&brd_devices_mutex);

	if (new)
		*part = 0;

	return kobj;
}