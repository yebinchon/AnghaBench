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

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gnttab_shared_vm_area ; 
 int /*<<< orphan*/  gnttab_status_vm_area ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(unsigned long nr_shared, unsigned long nr_status)
{
	int ret;

	if (!FUNC2())
		return 0;

	ret = FUNC0(&gnttab_shared_vm_area, nr_shared);
	if (ret < 0)
		return ret;

	/*
	 * Always allocate the space for the status frames in case
	 * we're migrated to a host with V2 support.
	 */
	ret = FUNC0(&gnttab_status_vm_area, nr_status);
	if (ret < 0)
		goto err;

	return 0;
err:
	FUNC1(&gnttab_shared_vm_area);
	return -ENOMEM;
}