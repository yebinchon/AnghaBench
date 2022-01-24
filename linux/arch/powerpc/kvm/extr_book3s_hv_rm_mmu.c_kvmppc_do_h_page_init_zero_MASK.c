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
 scalar_t__ L1_CACHE_BYTES ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int SZ_4K ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 long FUNC1 (struct kvm_vcpu*,unsigned long,int,unsigned long*,struct kvm_memory_slot**) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_memory_slot*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct kvm*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static long FUNC7(struct kvm_vcpu *vcpu,
				       unsigned long dest)
{
	struct kvm_memory_slot *memslot;
	struct kvm *kvm = vcpu->kvm;
	unsigned long pa, mmu_seq;
	long ret = H_SUCCESS;
	int i;

	/* Used later to detect if we might have been invalidated */
	mmu_seq = kvm->mmu_notifier_seq;
	FUNC6();

	ret = FUNC1(vcpu, dest, 1, &pa, &memslot);
	if (ret != H_SUCCESS)
		return ret;

	/* Check if we've been invalidated */
	FUNC4(&kvm->mmu_lock.rlock);
	if (FUNC3(kvm, mmu_seq)) {
		ret = H_TOO_HARD;
		goto out_unlock;
	}

	/* Zero the page */
	for (i = 0; i < SZ_4K; i += L1_CACHE_BYTES, pa += L1_CACHE_BYTES)
		FUNC0((void *)pa);
	FUNC2(memslot, dest >> PAGE_SHIFT, PAGE_SIZE);

out_unlock:
	FUNC5(&kvm->mmu_lock.rlock);
	return ret;
}