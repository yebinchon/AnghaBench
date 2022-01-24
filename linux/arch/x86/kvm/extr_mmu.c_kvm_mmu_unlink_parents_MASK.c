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
struct rmap_iterator {int dummy; } ;
struct kvm_mmu_page {int /*<<< orphan*/  parent_ptes; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_mmu_page*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,struct rmap_iterator*) ; 

__attribute__((used)) static void FUNC2(struct kvm *kvm, struct kvm_mmu_page *sp)
{
	u64 *sptep;
	struct rmap_iterator iter;

	while ((sptep = FUNC1(&sp->parent_ptes, &iter)))
		FUNC0(sp, sptep);
}