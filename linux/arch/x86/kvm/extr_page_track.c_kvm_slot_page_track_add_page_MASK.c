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
typedef  int /*<<< orphan*/  gfn_t ;
typedef  enum kvm_page_track_mode { ____Placeholder_kvm_page_track_mode } kvm_page_track_mode ;

/* Variables and functions */
 int KVM_PAGE_TRACK_WRITE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_memory_slot*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct kvm*,struct kvm_memory_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_memory_slot*,int /*<<< orphan*/ ,int,int) ; 

void FUNC6(struct kvm *kvm,
				  struct kvm_memory_slot *slot, gfn_t gfn,
				  enum kvm_page_track_mode mode)
{

	if (FUNC0(!FUNC4(mode)))
		return;

	FUNC5(slot, gfn, mode, 1);

	/*
	 * new track stops large page mapping for the
	 * tracked page.
	 */
	FUNC2(slot, gfn);

	if (mode == KVM_PAGE_TRACK_WRITE)
		if (FUNC3(kvm, slot, gfn))
			FUNC1(kvm);
}