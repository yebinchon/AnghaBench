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
struct kvm_memory_slot {int flags; } ;
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int gpa_t ;
typedef  int gfn_t ;

/* Variables and functions */
 int KVM_MEM_LOG_DIRTY_PAGES ; 
 int KVM_MEM_READONLY ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/ * FUNC0 (struct kvm*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct kvm *kvm, gfn_t gfn, gfn_t gfn_end,
				struct kvm_memory_slot *memslot, void *data)
{
	gpa_t gpa = gfn << PAGE_SHIFT;
	pte_t hva_pte = *(pte_t *)data;
	pte_t *gpa_pte = FUNC0(kvm, NULL, gpa);
	pte_t old_pte;

	if (!gpa_pte)
		return 0;

	/* Mapping may need adjusting depending on memslot flags */
	old_pte = *gpa_pte;
	if (memslot->flags & KVM_MEM_LOG_DIRTY_PAGES && !FUNC1(old_pte))
		hva_pte = FUNC2(hva_pte);
	else if (memslot->flags & KVM_MEM_READONLY)
		hva_pte = FUNC5(hva_pte);

	FUNC7(gpa_pte, hva_pte);

	/* Replacing an absent or old page doesn't need flushes */
	if (!FUNC4(old_pte) || !FUNC6(old_pte))
		return 0;

	/* Pages swapped, aged, moved, or cleaned require flushes */
	return !FUNC4(hva_pte) ||
	       !FUNC6(hva_pte) ||
	       FUNC3(old_pte) != FUNC3(hva_pte) ||
	       (FUNC1(old_pte) && !FUNC1(hva_pte));
}