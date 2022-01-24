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
struct vm_area_struct {int vm_flags; } ;

/* Variables and functions */
 unsigned long PAGE_SIZE ; 
 int VM_EXEC ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 

void FUNC2(struct vm_area_struct *vma, unsigned long vmaddr,
			unsigned long pfn)
{
	unsigned long start = vmaddr;
	unsigned long end = start + PAGE_SIZE;

	FUNC0(start, end);
	if (vma->vm_flags & VM_EXEC)
		FUNC1(start, end);
}