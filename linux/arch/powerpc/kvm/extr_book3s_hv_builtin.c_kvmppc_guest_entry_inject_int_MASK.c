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
struct TYPE_4__ {int msr; } ;
struct TYPE_6__ {int pending_exceptions; unsigned long intr_msr; scalar_t__ doorbell_request; TYPE_2__* vcore; TYPE_1__ shregs; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_5__ {int dpdes; } ;

/* Variables and functions */
 unsigned long BOOK3S_INTERRUPT_DECREMENTER ; 
 unsigned long BOOK3S_INTERRUPT_EXTERNAL ; 
 int BOOK3S_IRQPRIO_EXTERNAL ; 
 unsigned long LPCR_LD ; 
 int LPCR_MER_SH ; 
 int MSR_EE ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 unsigned long MSR_TS_S ; 
 int /*<<< orphan*/  SPRN_DEC ; 
 int /*<<< orphan*/  SPRN_DPDES ; 
 int /*<<< orphan*/  SPRN_LPCR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,unsigned long) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(struct kvm_vcpu *vcpu)
{
	int ext;
	unsigned long vec = 0;
	unsigned long lpcr;

	/* Insert EXTERNAL bit into LPCR at the MER bit position */
	ext = (vcpu->arch.pending_exceptions >> BOOK3S_IRQPRIO_EXTERNAL) & 1;
	lpcr = FUNC6(SPRN_LPCR);
	lpcr |= ext << LPCR_MER_SH;
	FUNC7(SPRN_LPCR, lpcr);
	FUNC1();

	if (vcpu->arch.shregs.msr & MSR_EE) {
		if (ext) {
			vec = BOOK3S_INTERRUPT_EXTERNAL;
		} else {
			long int dec = FUNC6(SPRN_DEC);
			if (!(lpcr & LPCR_LD))
				dec = (int) dec;
			if (dec < 0)
				vec = BOOK3S_INTERRUPT_DECREMENTER;
		}
	}
	if (vec) {
		unsigned long msr, old_msr = vcpu->arch.shregs.msr;

		FUNC4(vcpu, FUNC2(vcpu));
		FUNC5(vcpu, old_msr);
		FUNC3(vcpu, vec);
		msr = vcpu->arch.intr_msr;
		if (FUNC0(old_msr))
			msr |= MSR_TS_S;
		vcpu->arch.shregs.msr = msr;
	}

	if (vcpu->arch.doorbell_request) {
		FUNC7(SPRN_DPDES, 1);
		vcpu->arch.vcore->dpdes = 1;
		FUNC8();
		vcpu->arch.doorbell_request = 0;
	}
}