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
struct vm_area_struct {int dummy; } ;
struct TYPE_2__ {unsigned long vdso; } ;
struct mm_struct {TYPE_1__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vm_area_struct*) ; 
 int PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int VM_EXEC ; 
 int VM_MAYEXEC ; 
 int VM_MAYREAD ; 
 int VM_MAYWRITE ; 
 int VM_READ ; 
 struct vm_area_struct* FUNC1 (struct mm_struct*,unsigned long,unsigned long,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  vdso_text_mapping ; 
 int /*<<< orphan*/ * vdso_text_pagelist ; 
 int vdso_total_pages ; 

void FUNC3(struct mm_struct *mm, unsigned long addr)
{
	struct vm_area_struct *vma;
	unsigned long len;

	mm->context.vdso = 0;

	if (vdso_text_pagelist == NULL)
		return;

	if (FUNC2(mm, addr))
		return;

	/* Account for vvar page. */
	addr += PAGE_SIZE;
	len = (vdso_total_pages - 1) << PAGE_SHIFT;

	vma = FUNC1(mm, addr, len,
		VM_READ | VM_EXEC | VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC,
		&vdso_text_mapping);

	if (!FUNC0(vma))
		mm->context.vdso = addr;
}