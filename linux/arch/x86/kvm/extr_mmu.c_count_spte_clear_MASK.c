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
typedef  int /*<<< orphan*/  u64 ;
struct kvm_mmu_page {int /*<<< orphan*/  clear_spte_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct kvm_mmu_page* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(u64 *sptep, u64 spte)
{
	struct kvm_mmu_page *sp =  FUNC2(FUNC0(sptep));

	if (FUNC1(spte))
		return;

	/* Ensure the spte is completely set before we increase the count */
	FUNC3();
	sp->clear_spte_count++;
}