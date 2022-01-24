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
struct kvmppc_vcpu_book3s {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  shadow_vcpu; scalar_t__ shared; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  kvm_vcpu_cache ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 struct kvmppc_vcpu_book3s* FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvmppc_vcpu_book3s*) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu)
{
	struct kvmppc_vcpu_book3s *vcpu_book3s = FUNC4(vcpu);

	FUNC0((unsigned long)vcpu->arch.shared & PAGE_MASK);
	FUNC3(vcpu);
#ifdef CONFIG_KVM_BOOK3S_32_HANDLER
	kfree(vcpu->arch.shadow_vcpu);
#endif
	FUNC5(vcpu_book3s);
	FUNC2(kvm_vcpu_cache, vcpu);
}