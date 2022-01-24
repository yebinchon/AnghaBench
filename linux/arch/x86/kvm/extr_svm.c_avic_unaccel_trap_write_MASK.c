#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {struct kvm_lapic* apic; } ;
struct TYPE_10__ {TYPE_1__ arch; } ;
struct vcpu_svm {TYPE_4__ vcpu; TYPE_3__* vmcb; } ;
struct kvm_lapic {int dummy; } ;
struct TYPE_8__ {int exit_info_1; } ;
struct TYPE_9__ {TYPE_2__ control; } ;

/* Variables and functions */
#define  APIC_DFR 130 
#define  APIC_ID 129 
#define  APIC_LDR 128 
 int AVIC_UNACCEL_ACCESS_OFFSET_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_lapic*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_lapic*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct vcpu_svm *svm)
{
	struct kvm_lapic *apic = svm->vcpu.arch.apic;
	u32 offset = svm->vmcb->control.exit_info_1 &
				AVIC_UNACCEL_ACCESS_OFFSET_MASK;

	switch (offset) {
	case APIC_ID:
		if (FUNC0(&svm->vcpu))
			return 0;
		break;
	case APIC_LDR:
		if (FUNC2(&svm->vcpu))
			return 0;
		break;
	case APIC_DFR:
		FUNC1(&svm->vcpu);
		break;
	default:
		break;
	}

	FUNC4(apic, offset, FUNC3(apic, offset));

	return 1;
}