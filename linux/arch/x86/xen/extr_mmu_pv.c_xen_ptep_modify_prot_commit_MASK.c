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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
struct mmu_update {int ptr; int /*<<< orphan*/  val; } ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_2__ {int maddr; } ;

/* Variables and functions */
 int MMU_PT_UPDATE_PRESERVE_AD ; 
 int /*<<< orphan*/  PARAVIRT_LAZY_MMU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mmu_update*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct vm_area_struct *vma, unsigned long addr,
				 pte_t *ptep, pte_t pte)
{
	struct mmu_update u;

	FUNC1(vma->vm_mm, addr, ptep, pte);
	FUNC4();

	u.ptr = FUNC2(ptep).maddr | MMU_PT_UPDATE_PRESERVE_AD;
	u.val = FUNC0(pte);
	FUNC3(&u);

	FUNC5(PARAVIRT_LAZY_MMU);
}