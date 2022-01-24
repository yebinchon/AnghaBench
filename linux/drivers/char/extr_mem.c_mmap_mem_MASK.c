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
struct vm_area_struct {size_t vm_end; size_t vm_start; int vm_pgoff; int /*<<< orphan*/  vm_page_prot; int /*<<< orphan*/ * vm_ops; } ;
struct file {int dummy; } ;
typedef  int phys_addr_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ENOSYS ; 
 int EPERM ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  mmap_mem_ops ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int,size_t) ; 
 scalar_t__ FUNC4 (struct vm_area_struct*,size_t,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,size_t) ; 

__attribute__((used)) static int FUNC6(struct file *file, struct vm_area_struct *vma)
{
	size_t size = vma->vm_end - vma->vm_start;
	phys_addr_t offset = (phys_addr_t)vma->vm_pgoff << PAGE_SHIFT;

	/* Does it even fit in phys_addr_t? */
	if (offset >> PAGE_SHIFT != vma->vm_pgoff)
		return -EINVAL;

	/* It's illegal to wrap around the end of the physical address space. */
	if (offset + (phys_addr_t)size - 1 < offset)
		return -EINVAL;

	if (!FUNC5(vma->vm_pgoff, size))
		return -EINVAL;

	if (!FUNC2(vma))
		return -ENOSYS;

	if (!FUNC3(vma->vm_pgoff, size))
		return -EPERM;

	if (!FUNC1(file, vma->vm_pgoff, size,
						&vma->vm_page_prot))
		return -EINVAL;

	vma->vm_page_prot = FUNC0(file, vma->vm_pgoff,
						 size,
						 vma->vm_page_prot);

	vma->vm_ops = &mmap_mem_ops;

	/* Remap-pfn-range will mark the range VM_IO */
	if (FUNC4(vma,
			    vma->vm_start,
			    vma->vm_pgoff,
			    size,
			    vma->vm_page_prot)) {
		return -EAGAIN;
	}
	return 0;
}