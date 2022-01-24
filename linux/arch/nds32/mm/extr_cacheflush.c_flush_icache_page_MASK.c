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
struct page {int dummy; } ;

/* Variables and functions */
 int VM_EXEC ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

void FUNC5(struct vm_area_struct *vma, struct page *page)
{
	unsigned long flags;
	unsigned long kaddr;
	FUNC4(flags);
	kaddr = (unsigned long)FUNC1(page);
	FUNC0(kaddr, vma->vm_flags & VM_EXEC);
	FUNC2((void *)kaddr);
	FUNC3(flags);
}