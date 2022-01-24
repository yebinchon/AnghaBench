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
struct flusher_data {unsigned long addr1; unsigned long addr2; struct vm_area_struct* vma; } ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int VM_EXEC ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*,unsigned long) ; 

__attribute__((used)) static void FUNC2(void *args)
{
	struct flusher_data *data = args;
	struct vm_area_struct *vma;
	unsigned long eaddr, pfn;

	vma = data->vma;
	eaddr = data->addr1;
	pfn = data->addr2;

	FUNC0(pfn << PAGE_SHIFT);

	if (vma->vm_flags & VM_EXEC)
		FUNC1(vma, eaddr);
}