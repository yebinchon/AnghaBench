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
struct gmap {TYPE_1__* mm; } ;
struct TYPE_2__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int FUNC1 (struct gmap*,unsigned long,unsigned long) ; 
 unsigned long FUNC2 (struct gmap*,unsigned long) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,unsigned long,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct gmap *gmap, unsigned long gaddr,
	       unsigned int fault_flags)
{
	unsigned long vmaddr;
	int rc;
	bool unlocked;

	FUNC3(&gmap->mm->mmap_sem);

retry:
	unlocked = false;
	vmaddr = FUNC2(gmap, gaddr);
	if (FUNC0(vmaddr)) {
		rc = vmaddr;
		goto out_up;
	}
	if (FUNC4(current, gmap->mm, vmaddr, fault_flags,
			     &unlocked)) {
		rc = -EFAULT;
		goto out_up;
	}
	/*
	 * In the case that fixup_user_fault unlocked the mmap_sem during
	 * faultin redo __gmap_translate to not race with a map/unmap_segment.
	 */
	if (unlocked)
		goto retry;

	rc = FUNC1(gmap, gaddr, vmaddr);
out_up:
	FUNC5(&gmap->mm->mmap_sem);
	return rc;
}