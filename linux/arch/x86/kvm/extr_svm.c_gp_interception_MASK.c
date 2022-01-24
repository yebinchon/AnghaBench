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
typedef  scalar_t__ u32 ;
struct kvm_vcpu {int dummy; } ;
struct vcpu_svm {TYPE_2__* vmcb; struct kvm_vcpu vcpu; } ;
struct TYPE_3__ {scalar_t__ exit_info_1; } ;
struct TYPE_4__ {TYPE_1__ control; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMULTYPE_VMWARE_GP ; 
 int /*<<< orphan*/  GP_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  enable_vmware_backdoor ; 
 int FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct vcpu_svm *svm)
{
	struct kvm_vcpu *vcpu = &svm->vcpu;
	u32 error_code = svm->vmcb->control.exit_info_1;

	FUNC0(!enable_vmware_backdoor);

	/*
	 * VMware backdoor emulation on #GP interception only handles IN{S},
	 * OUT{S}, and RDPMC, none of which generate a non-zero error code.
	 */
	if (error_code) {
		FUNC2(vcpu, GP_VECTOR, error_code);
		return 1;
	}
	return FUNC1(vcpu, EMULTYPE_VMWARE_GP);
}