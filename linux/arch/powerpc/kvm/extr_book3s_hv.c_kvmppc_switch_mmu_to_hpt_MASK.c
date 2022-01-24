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
struct TYPE_2__ {scalar_t__ radix; scalar_t__ process_table; } ;
struct kvm {int /*<<< orphan*/  mmu_lock; TYPE_1__ arch; } ;

/* Variables and functions */
 int LPCR_GTSE ; 
 int LPCR_HR ; 
 int LPCR_UPRT ; 
 int LPCR_VPM1 ; 
 int /*<<< orphan*/  FUNC0 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*,int,int) ; 
 scalar_t__ FUNC4 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct kvm *kvm)
{
	if (FUNC4(kvm))
		FUNC0(kvm);
	FUNC2(kvm);
	kvm->arch.process_table = 0;
	/* Mutual exclusion with kvm_unmap_hva_range etc. */
	FUNC5(&kvm->mmu_lock);
	kvm->arch.radix = 0;
	FUNC6(&kvm->mmu_lock);
	FUNC1(kvm);
	FUNC3(kvm, LPCR_VPM1,
			   LPCR_VPM1 | LPCR_UPRT | LPCR_GTSE | LPCR_HR);
	return 0;
}