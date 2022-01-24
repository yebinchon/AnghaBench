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
struct kvm_userspace_memory_region {int /*<<< orphan*/  memory_size; int /*<<< orphan*/  guest_phys_addr; int /*<<< orphan*/  userspace_addr; } ;
struct kvm_memory_slot {int base_gfn; int npages; } ;
struct TYPE_2__ {int /*<<< orphan*/  gmap; } ;
struct kvm {TYPE_1__ arch; } ;
typedef  enum kvm_mr_change { ____Placeholder_kvm_mr_change } kvm_mr_change ;

/* Variables and functions */
#define  KVM_MR_CREATE 131 
#define  KVM_MR_DELETE 130 
#define  KVM_MR_FLAGS_ONLY 129 
#define  KVM_MR_MOVE 128 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(struct kvm *kvm,
				const struct kvm_userspace_memory_region *mem,
				const struct kvm_memory_slot *old,
				const struct kvm_memory_slot *new,
				enum kvm_mr_change change)
{
	int rc = 0;

	switch (change) {
	case KVM_MR_DELETE:
		rc = FUNC2(kvm->arch.gmap, old->base_gfn * PAGE_SIZE,
					old->npages * PAGE_SIZE);
		break;
	case KVM_MR_MOVE:
		rc = FUNC2(kvm->arch.gmap, old->base_gfn * PAGE_SIZE,
					old->npages * PAGE_SIZE);
		if (rc)
			break;
		/* FALLTHROUGH */
	case KVM_MR_CREATE:
		rc = FUNC1(kvm->arch.gmap, mem->userspace_addr,
				      mem->guest_phys_addr, mem->memory_size);
		break;
	case KVM_MR_FLAGS_ONLY:
		break;
	default:
		FUNC0(1, "Unknown KVM MR CHANGE: %d\n", change);
	}
	if (rc)
		FUNC3("failed to commit memory region\n");
	return;
}