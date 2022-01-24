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
struct kvm_mmu_page {int /*<<< orphan*/  unsync_children; int /*<<< orphan*/  unsync_child_bitmap; int /*<<< orphan*/ * spt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_mmu_page*) ; 
 struct kvm_mmu_page* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(u64 *spte)
{
	struct kvm_mmu_page *sp;
	unsigned int index;

	sp = FUNC3(FUNC0(spte));
	index = spte - sp->spt;
	if (FUNC1(index, sp->unsync_child_bitmap))
		return;
	if (sp->unsync_children++)
		return;
	FUNC2(sp);
}