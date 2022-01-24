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
struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int gpa_t ;
typedef  int gfn_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/ * FUNC0 (struct kvm*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct kvm *kvm, gfn_t gfn, gfn_t gfn_end,
				    struct kvm_memory_slot *memslot, void *data)
{
	gpa_t gpa = gfn << PAGE_SHIFT;
	pte_t *gpa_pte = FUNC0(kvm, NULL, gpa);

	if (!gpa_pte)
		return 0;
	return FUNC1(*gpa_pte);
}