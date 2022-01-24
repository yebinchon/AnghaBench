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
struct TYPE_6__ {TYPE_2__* mmu; } ;
struct kvm_vcpu {TYPE_3__ arch; TYPE_1__* kvm; } ;
struct kvm_mmu_page {int* spt; int /*<<< orphan*/  root_count; } ;
typedef  int hpa_t ;
struct TYPE_5__ {scalar_t__ shadow_root_level; int* pae_root; int /*<<< orphan*/  (* get_cr3 ) (struct kvm_vcpu*) ;int /*<<< orphan*/  root_cr3; void* root_hpa; } ;
struct TYPE_4__ {int /*<<< orphan*/  mmu_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACC_ALL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 scalar_t__ PT32E_ROOT_LEVEL ; 
 scalar_t__ PT32_ROOT_LEVEL ; 
 scalar_t__ PT64_ROOT_4LEVEL ; 
 int PT_PRESENT_MASK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int*) ; 
 struct kvm_mmu_page* FUNC4 (struct kvm_vcpu*,unsigned int,unsigned int,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC9(struct kvm_vcpu *vcpu)
{
	struct kvm_mmu_page *sp;
	unsigned i;

	if (vcpu->arch.mmu->shadow_root_level >= PT64_ROOT_4LEVEL) {
		FUNC6(&vcpu->kvm->mmu_lock);
		if(FUNC5(vcpu) < 0) {
			FUNC7(&vcpu->kvm->mmu_lock);
			return -ENOSPC;
		}
		sp = FUNC4(vcpu, 0, 0,
				vcpu->arch.mmu->shadow_root_level, 1, ACC_ALL);
		++sp->root_count;
		FUNC7(&vcpu->kvm->mmu_lock);
		vcpu->arch.mmu->root_hpa = FUNC3(sp->spt);
	} else if (vcpu->arch.mmu->shadow_root_level == PT32E_ROOT_LEVEL) {
		for (i = 0; i < 4; ++i) {
			hpa_t root = vcpu->arch.mmu->pae_root[i];

			FUNC1(FUNC2(root));
			FUNC6(&vcpu->kvm->mmu_lock);
			if (FUNC5(vcpu) < 0) {
				FUNC7(&vcpu->kvm->mmu_lock);
				return -ENOSPC;
			}
			sp = FUNC4(vcpu, i << (30 - PAGE_SHIFT),
					i << 30, PT32_ROOT_LEVEL, 1, ACC_ALL);
			root = FUNC3(sp->spt);
			++sp->root_count;
			FUNC7(&vcpu->kvm->mmu_lock);
			vcpu->arch.mmu->pae_root[i] = root | PT_PRESENT_MASK;
		}
		vcpu->arch.mmu->root_hpa = FUNC3(vcpu->arch.mmu->pae_root);
	} else
		FUNC0();
	vcpu->arch.mmu->root_cr3 = vcpu->arch.mmu->get_cr3(vcpu);

	return 0;
}