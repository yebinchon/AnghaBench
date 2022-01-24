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
struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct vm_area_struct*) ; 
 int VM_MAYREAD ; 
 int VM_READ ; 
 struct vm_area_struct* FUNC1 (struct mm_struct*,unsigned long,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vdso_data_mapping ; 

__attribute__((used)) static int FUNC2(struct mm_struct *mm, unsigned long addr)
{
	struct vm_area_struct *vma;

	vma = FUNC1(mm, addr, PAGE_SIZE,
				       VM_READ | VM_MAYREAD,
				       &vdso_data_mapping);

	return FUNC0(vma);
}