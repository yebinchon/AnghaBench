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
struct kvm_vcpu {struct kvm* kvm; } ;
struct kvm_memory_slot {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rlock; } ;
struct kvm {unsigned long mmu_notifier_seq; TYPE_1__ mmu_lock; } ;

/* Variables and functions */
 long H_SUCCESS ; 
 long H_TOO_HARD ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SZ_4K ; 
 long FUNC0 (struct kvm_vcpu*,unsigned long,int,unsigned long*,struct kvm_memory_slot**) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_memory_slot*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct kvm*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static long FUNC7(struct kvm_vcpu *vcpu,
				       unsigned long dest, unsigned long src)
{
	unsigned long dest_pa, src_pa, mmu_seq;
	struct kvm_memory_slot *dest_memslot;
	struct kvm *kvm = vcpu->kvm;
	long ret = H_SUCCESS;

	/* Used later to detect if we might have been invalidated */
	mmu_seq = kvm->mmu_notifier_seq;
	FUNC6();

	ret = FUNC0(vcpu, dest, 1, &dest_pa, &dest_memslot);
	if (ret != H_SUCCESS)
		return ret;
	ret = FUNC0(vcpu, src, 0, &src_pa, NULL);
	if (ret != H_SUCCESS)
		return ret;

	/* Check if we've been invalidated */
	FUNC4(&kvm->mmu_lock.rlock);
	if (FUNC3(kvm, mmu_seq)) {
		ret = H_TOO_HARD;
		goto out_unlock;
	}

	/* Copy the page */
	FUNC2((void *)dest_pa, (void *)src_pa, SZ_4K);

	FUNC1(dest_memslot, dest >> PAGE_SHIFT, PAGE_SIZE);

out_unlock:
	FUNC5(&kvm->mmu_lock.rlock);
	return ret;
}