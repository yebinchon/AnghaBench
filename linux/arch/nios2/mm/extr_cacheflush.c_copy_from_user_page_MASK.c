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
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

void FUNC5(struct vm_area_struct *vma, struct page *page,
			unsigned long user_vaddr,
			void *dst, void *src, int len)
{
	FUNC2(vma, user_vaddr, FUNC4(page));
	FUNC3(dst, src, len);
	FUNC0((unsigned long)src, (unsigned long)src + len);
	if (vma->vm_flags & VM_EXEC)
		FUNC1((unsigned long)src, (unsigned long)src + len);
}