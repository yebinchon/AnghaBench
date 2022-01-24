#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; unsigned long vm_pgoff; int vm_flags; int /*<<< orphan*/ * vm_ops; int /*<<< orphan*/  vm_page_prot; } ;
struct rdtgroup {struct pseudo_lock_region* plr; } ;
struct pseudo_lock_region {unsigned long size; scalar_t__ kmem; TYPE_1__* d; } ;
struct file {struct rdtgroup* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  cpus_ptr; } ;
struct TYPE_3__ {int /*<<< orphan*/  cpu_mask; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOSPC ; 
 unsigned long PAGE_SHIFT ; 
 int VM_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pseudo_mmap_ops ; 
 int /*<<< orphan*/  rdtgroup_mutex ; 
 scalar_t__ FUNC6 (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct file *filp, struct vm_area_struct *vma)
{
	unsigned long vsize = vma->vm_end - vma->vm_start;
	unsigned long off = vma->vm_pgoff << PAGE_SHIFT;
	struct pseudo_lock_region *plr;
	struct rdtgroup *rdtgrp;
	unsigned long physical;
	unsigned long psize;

	FUNC4(&rdtgroup_mutex);

	rdtgrp = filp->private_data;
	FUNC0(!rdtgrp);
	if (!rdtgrp) {
		FUNC5(&rdtgroup_mutex);
		return -ENODEV;
	}

	plr = rdtgrp->plr;

	if (!plr->d) {
		FUNC5(&rdtgroup_mutex);
		return -ENODEV;
	}

	/*
	 * Task is required to run with affinity to the cpus associated
	 * with the pseudo-locked region. If this is not the case the task
	 * may be scheduled elsewhere and invalidate entries in the
	 * pseudo-locked region.
	 */
	if (!FUNC2(current->cpus_ptr, &plr->d->cpu_mask)) {
		FUNC5(&rdtgroup_mutex);
		return -EINVAL;
	}

	physical = FUNC1(plr->kmem) >> PAGE_SHIFT;
	psize = plr->size - off;

	if (off > plr->size) {
		FUNC5(&rdtgroup_mutex);
		return -ENOSPC;
	}

	/*
	 * Ensure changes are carried directly to the memory being mapped,
	 * do not allow copy-on-write mapping.
	 */
	if (!(vma->vm_flags & VM_SHARED)) {
		FUNC5(&rdtgroup_mutex);
		return -EINVAL;
	}

	if (vsize > psize) {
		FUNC5(&rdtgroup_mutex);
		return -ENOSPC;
	}

	FUNC3(plr->kmem + off, 0, vsize);

	if (FUNC6(vma, vma->vm_start, physical + vma->vm_pgoff,
			    vsize, vma->vm_page_prot)) {
		FUNC5(&rdtgroup_mutex);
		return -EAGAIN;
	}
	vma->vm_ops = &pseudo_mmap_ops;
	FUNC5(&rdtgroup_mutex);
	return 0;
}