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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vm_area_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  mmu_virtual_psize ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct vm_area_struct*,int) ; 

int FUNC4(struct vm_area_struct *vma, unsigned long address,
			  pte_t *ptep, pte_t entry, int dirty)
{
	int changed;
	entry = FUNC3(entry, vma, dirty);
	changed = !FUNC2(*(ptep), entry);
	if (changed) {
		FUNC1(vma->vm_mm, address);
		FUNC0(vma, ptep, entry,
					address, mmu_virtual_psize);
	}
	return changed;
}