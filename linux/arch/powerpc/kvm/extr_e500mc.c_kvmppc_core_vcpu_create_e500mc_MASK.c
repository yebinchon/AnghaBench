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
struct TYPE_2__ {int oldpir; void* shared; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvmppc_vcpu_e500 {struct kvm_vcpu vcpu; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct kvm_vcpu* FUNC0 (int) ; 
 int GFP_KERNEL ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct kvmppc_vcpu_e500*) ; 
 struct kvmppc_vcpu_e500* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  kvm_vcpu_cache ; 
 int FUNC4 (struct kvm_vcpu*,struct kvm*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int FUNC6 (struct kvmppc_vcpu_e500*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvmppc_vcpu_e500*) ; 

__attribute__((used)) static struct kvm_vcpu *FUNC8(struct kvm *kvm,
						       unsigned int id)
{
	struct kvmppc_vcpu_e500 *vcpu_e500;
	struct kvm_vcpu *vcpu;
	int err;

	vcpu_e500 = FUNC3(kvm_vcpu_cache, GFP_KERNEL);
	if (!vcpu_e500) {
		err = -ENOMEM;
		goto out;
	}
	vcpu = &vcpu_e500->vcpu;

	/* Invalid PIR value -- this LPID dosn't have valid state on any cpu */
	vcpu->arch.oldpir = 0xffffffff;

	err = FUNC4(vcpu, kvm, id);
	if (err)
		goto free_vcpu;

	err = FUNC6(vcpu_e500);
	if (err)
		goto uninit_vcpu;

	vcpu->arch.shared = (void *)FUNC1(GFP_KERNEL | __GFP_ZERO);
	if (!vcpu->arch.shared) {
		err = -ENOMEM;
		goto uninit_tlb;
	}

	return vcpu;

uninit_tlb:
	FUNC7(vcpu_e500);
uninit_vcpu:
	FUNC5(vcpu);

free_vcpu:
	FUNC2(kvm_vcpu_cache, vcpu_e500);
out:
	return FUNC0(err);
}