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
typedef  unsigned long u64 ;
struct vm_area_struct {unsigned long vm_pgoff; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long FUNC0 (unsigned long) ; 
 int FUNC1 (struct file*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

__attribute__((used)) static int FUNC3(struct file *file, struct vm_area_struct *vma)
{
	unsigned long pfn;

	/* Turn a kernel-virtual address into a physical page frame */
	pfn = FUNC0((u64)vma->vm_pgoff << PAGE_SHIFT) >> PAGE_SHIFT;

	/*
	 * RED-PEN: on some architectures there is more mapped memory than
	 * available in mem_map which pfn_valid checks for. Perhaps should add a
	 * new macro here.
	 *
	 * RED-PEN: vmalloc is not supported right now.
	 */
	if (!FUNC2(pfn))
		return -EIO;

	vma->vm_pgoff = pfn;
	return FUNC1(file, vma);
}