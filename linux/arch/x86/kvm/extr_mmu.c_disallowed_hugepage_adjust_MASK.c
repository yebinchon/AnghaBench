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
typedef  int u64 ;
struct kvm_shadow_walk_iterator {int* sptep; int level; } ;
typedef  int kvm_pfn_t ;
typedef  int gfn_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int PT_PAGE_TABLE_LEVEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct kvm_shadow_walk_iterator it,
				       gfn_t gfn, kvm_pfn_t *pfnp, int *levelp)
{
	int level = *levelp;
	u64 spte = *it.sptep;

	if (it.level == level && level > PT_PAGE_TABLE_LEVEL &&
	    FUNC2() &&
	    FUNC3(spte) &&
	    !FUNC1(spte)) {
		/*
		 * A small SPTE exists for this pfn, but FNAME(fetch)
		 * and __direct_map would like to create a large PTE
		 * instead: just force them to go down another level,
		 * patching back for them into pfn the next 9 bits of
		 * the address.
		 */
		u64 page_mask = FUNC0(level) - FUNC0(level - 1);
		*pfnp |= gfn & page_mask;
		(*levelp)--;
	}
}