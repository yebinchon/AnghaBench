#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pmu_event_filter; int /*<<< orphan*/  apic_map; } ;
struct kvm {scalar_t__ mm; int /*<<< orphan*/  srcu; TYPE_1__ arch; } ;
struct TYPE_6__ {scalar_t__ mm; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* vm_destroy ) (struct kvm*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_ACCESS_PAGE_PRIVATE_MEMSLOT ; 
 int /*<<< orphan*/  IDENTITY_PAGETABLE_PRIVATE_MEMSLOT ; 
 int /*<<< orphan*/  TSS_PRIVATE_MEMSLOT ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*) ; 
 TYPE_2__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC12(struct kvm *kvm)
{
	if (current->mm == kvm->mm) {
		/*
		 * Free memory regions allocated on behalf of userspace,
		 * unless the the memory map has changed due to process exit
		 * or fd copying.
		 */
		FUNC11(kvm, APIC_ACCESS_PAGE_PRIVATE_MEMSLOT, 0, 0);
		FUNC11(kvm, IDENTITY_PAGETABLE_PRIVATE_MEMSLOT, 0, 0);
		FUNC11(kvm, TSS_PRIVATE_MEMSLOT, 0, 0);
	}
	if (kvm_x86_ops->vm_destroy)
		kvm_x86_ops->vm_destroy(kvm);
	FUNC7(kvm);
	FUNC4(kvm);
	FUNC2(kvm);
	FUNC1(FUNC8(kvm->arch.apic_map, 1));
	FUNC0(FUNC9(kvm->arch.pmu_event_filter, &kvm->srcu, 1));
	FUNC5(kvm);
	FUNC6(kvm);
	FUNC3(kvm);
}