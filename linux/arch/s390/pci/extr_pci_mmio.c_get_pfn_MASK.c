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
struct vm_area_struct {unsigned long vm_flags; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 long EACCES ; 
 long EINVAL ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC1 (TYPE_1__*,unsigned long) ; 
 long FUNC2 (struct vm_area_struct*,unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC4(unsigned long user_addr, unsigned long access,
		    unsigned long *pfn)
{
	struct vm_area_struct *vma;
	long ret;

	FUNC0(&current->mm->mmap_sem);
	ret = -EINVAL;
	vma = FUNC1(current->mm, user_addr);
	if (!vma)
		goto out;
	ret = -EACCES;
	if (!(vma->vm_flags & access))
		goto out;
	ret = FUNC2(vma, user_addr, pfn);
out:
	FUNC3(&current->mm->mmap_sem);
	return ret;
}