#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kvm_hpt_info {int dummy; } ;
struct TYPE_4__ {int order; scalar_t__ virt; } ;
struct TYPE_3__ {int mmu_ready; int /*<<< orphan*/  mmu_setup_lock; int /*<<< orphan*/  need_tlb_flush; TYPE_2__ hpt; int /*<<< orphan*/  vcpus_running; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 long EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct kvm*) ; 
 long FUNC3 (struct kvm_hpt_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm*,struct kvm_hpt_info*) ; 
 long FUNC7 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 

long FUNC12(struct kvm *kvm, int order)
{
	long err = -EBUSY;
	struct kvm_hpt_info info;

	FUNC9(&kvm->arch.mmu_setup_lock);
	if (kvm->arch.mmu_ready) {
		kvm->arch.mmu_ready = 0;
		/* order mmu_ready vs. vcpus_running */
		FUNC11();
		if (FUNC0(&kvm->arch.vcpus_running)) {
			kvm->arch.mmu_ready = 1;
			goto out;
		}
	}
	if (FUNC2(kvm)) {
		err = FUNC7(kvm);
		if (err)
			goto out;
	}

	if (kvm->arch.hpt.order == order) {
		/* We already have a suitable HPT */

		/* Set the entire HPT to 0, i.e. invalid HPTEs */
		FUNC8((void *)kvm->arch.hpt.virt, 0, 1ul << order);
		/*
		 * Reset all the reverse-mapping chains for all memslots
		 */
		FUNC5(kvm);
		err = 0;
		goto out;
	}

	if (kvm->arch.hpt.virt) {
		FUNC4(&kvm->arch.hpt);
		FUNC5(kvm);
	}

	err = FUNC3(&info, order);
	if (err < 0)
		goto out;
	FUNC6(kvm, &info);

out:
	if (err == 0)
		/* Ensure that each vcpu will flush its TLB on next entry. */
		FUNC1(&kvm->arch.need_tlb_flush);

	FUNC10(&kvm->arch.mmu_setup_lock);
	return err;
}