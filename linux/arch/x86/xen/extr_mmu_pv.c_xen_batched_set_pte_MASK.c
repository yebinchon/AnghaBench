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
struct mmu_update {int ptr; int /*<<< orphan*/  val; } ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_2__ {int maddr; } ;

/* Variables and functions */
 int MMU_NORMAL_PT_UPDATE ; 
 scalar_t__ PARAVIRT_LAZY_MMU ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mmu_update*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static bool FUNC6(pte_t *ptep, pte_t pteval)
{
	struct mmu_update u;

	if (FUNC0() != PARAVIRT_LAZY_MMU)
		return false;

	FUNC4();

	u.ptr = FUNC2(ptep).maddr | MMU_NORMAL_PT_UPDATE;
	u.val = FUNC1(pteval);
	FUNC3(&u);

	FUNC5(PARAVIRT_LAZY_MMU);

	return true;
}