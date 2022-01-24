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
struct TYPE_2__ {int mmu_ready; int /*<<< orphan*/  mmu_setup_lock; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_ARCH_300 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct kvm_vcpu *vcpu)
{
	int r = 0;
	struct kvm *kvm = vcpu->kvm;

	FUNC4(&kvm->arch.mmu_setup_lock);
	if (!kvm->arch.mmu_ready) {
		if (!FUNC1(kvm))
			r = FUNC2(vcpu);
		if (!r) {
			if (FUNC0(CPU_FTR_ARCH_300))
				FUNC3(kvm);
			kvm->arch.mmu_ready = 1;
		}
	}
	FUNC5(&kvm->arch.mmu_setup_lock);
	return r;
}