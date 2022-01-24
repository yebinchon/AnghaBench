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
typedef  int u32 ;
struct TYPE_5__ {int apic_base; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;
struct vcpu_svm {TYPE_3__ vcpu; scalar_t__ virt_spec_ctrl; scalar_t__ spec_ctrl; } ;
struct TYPE_4__ {int microcode_version; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int APIC_DEFAULT_PHYS_BASE ; 
 int MSR_IA32_APICBASE_BSP ; 
 int MSR_IA32_APICBASE_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct vcpu_svm*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int*,int*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int) ; 
 scalar_t__ FUNC4 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 struct vcpu_svm* FUNC6 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC7(struct kvm_vcpu *vcpu, bool init_event)
{
	struct vcpu_svm *svm = FUNC6(vcpu);
	u32 dummy;
	u32 eax = 1;

	vcpu->arch.microcode_version = 0x01000065;
	svm->spec_ctrl = 0;
	svm->virt_spec_ctrl = 0;

	if (!init_event) {
		svm->vcpu.arch.apic_base = APIC_DEFAULT_PHYS_BASE |
					   MSR_IA32_APICBASE_ENABLE;
		if (FUNC5(&svm->vcpu))
			svm->vcpu.arch.apic_base |= MSR_IA32_APICBASE_BSP;
	}
	FUNC1(svm);

	FUNC2(vcpu, &eax, &dummy, &dummy, &dummy, true);
	FUNC3(vcpu, eax);

	if (FUNC4(vcpu) && !init_event)
		FUNC0(svm, APIC_DEFAULT_PHYS_BASE);
}