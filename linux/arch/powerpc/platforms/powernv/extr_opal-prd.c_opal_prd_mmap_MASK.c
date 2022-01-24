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
struct vm_area_struct {size_t vm_start; size_t vm_end; size_t vm_pgoff; int /*<<< orphan*/  vm_page_prot; int /*<<< orphan*/  vm_flags; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int EINVAL ; 
 size_t PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,size_t,size_t,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vm_area_struct*,size_t,size_t,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct file *file, struct vm_area_struct *vma)
{
	size_t addr, size;
	pgprot_t page_prot;
	int rc;

	FUNC2("opal_prd_mmap(0x%016lx, 0x%016lx, 0x%lx, 0x%lx)\n",
			vma->vm_start, vma->vm_end, vma->vm_pgoff,
			vma->vm_flags);

	addr = vma->vm_pgoff << PAGE_SHIFT;
	size = vma->vm_end - vma->vm_start;

	/* ensure we're mapping within one of the allowable ranges */
	if (!FUNC0(addr, size))
		return -EINVAL;

	page_prot = FUNC1(file, vma->vm_pgoff,
					 size, vma->vm_page_prot);

	rc = FUNC3(vma, vma->vm_start, vma->vm_pgoff, size,
				page_prot);

	return rc;
}