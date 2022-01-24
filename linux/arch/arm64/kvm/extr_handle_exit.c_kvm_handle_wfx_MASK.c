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
struct TYPE_2__ {int /*<<< orphan*/  wfi_exit_stat; int /*<<< orphan*/  wfe_exit_stat; } ;
struct kvm_vcpu {TYPE_1__ stat; } ;
struct kvm_run {int dummy; } ;

/* Variables and functions */
 int ESR_ELx_WFx_ISS_WFE ; 
 int /*<<< orphan*/  KVM_REQ_UNHALT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/ * FUNC8 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC9(struct kvm_vcpu *vcpu, struct kvm_run *run)
{
	if (FUNC3(vcpu) & ESR_ELx_WFx_ISS_WFE) {
		FUNC6(*FUNC8(vcpu), true);
		vcpu->stat.wfe_exit_stat++;
		FUNC4(vcpu, FUNC7(vcpu));
	} else {
		FUNC6(*FUNC8(vcpu), false);
		vcpu->stat.wfi_exit_stat++;
		FUNC2(vcpu);
		FUNC0(KVM_REQ_UNHALT, vcpu);
	}

	FUNC1(vcpu, FUNC5(vcpu));

	return 1;
}