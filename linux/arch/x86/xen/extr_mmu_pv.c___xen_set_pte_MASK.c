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
 int /*<<< orphan*/  DOMID_SELF ; 
 int /*<<< orphan*/  FUNC0 (struct mmu_update*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MMU_NORMAL_PT_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(pte_t *ptep, pte_t pteval)
{
	if (!FUNC3(ptep, pteval)) {
		/*
		 * Could call native_set_pte() here and trap and
		 * emulate the PTE write but with 32-bit guests this
		 * needs two traps (one for each of the two 32-bit
		 * words in the PTE) so do one hypercall directly
		 * instead.
		 */
		struct mmu_update u;

		u.ptr = FUNC2(ptep).maddr | MMU_NORMAL_PT_UPDATE;
		u.val = FUNC1(pteval);
		FUNC0(&u, 1, NULL, DOMID_SELF);
	}
}