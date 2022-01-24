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
typedef  void* u8 ;
struct kvm_vcpu {TYPE_1__* run; } ;
struct TYPE_2__ {scalar_t__ exit_reason; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_QUALIFICATION ; 
 scalar_t__ KVM_EXIT_SET_TPR ; 
 unsigned long LMSW_SOURCE_DATA_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X86_CR0_TS ; 
 int /*<<< orphan*/  enable_unrestricted_guest ; 
 int FUNC2 (struct kvm_vcpu*,unsigned long) ; 
 int FUNC3 (struct kvm_vcpu*,unsigned long) ; 
 int FUNC4 (struct kvm_vcpu*,int) ; 
 void* FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,unsigned long) ; 
 int FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC9 (struct kvm_vcpu*) ; 
 unsigned long FUNC10 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*,int,unsigned long) ; 
 int FUNC12 (struct kvm_vcpu*,unsigned long) ; 
 int FUNC13 (struct kvm_vcpu*,void*) ; 
 int FUNC14 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC15 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC16 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct kvm_vcpu*,char*,int,int) ; 
 unsigned long FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct kvm_vcpu *vcpu)
{
	unsigned long exit_qualification, val;
	int cr;
	int reg;
	int err;
	int ret;

	exit_qualification = FUNC19(EXIT_QUALIFICATION);
	cr = exit_qualification & 15;
	reg = (exit_qualification >> 8) & 15;
	switch ((exit_qualification >> 4) & 3) {
	case 0: /* mov to cr */
		val = FUNC10(vcpu, reg);
		FUNC17(cr, val);
		switch (cr) {
		case 0:
			err = FUNC2(vcpu, val);
			return FUNC4(vcpu, err);
		case 3:
			FUNC1(enable_unrestricted_guest);
			err = FUNC12(vcpu, val);
			return FUNC4(vcpu, err);
		case 4:
			err = FUNC3(vcpu, val);
			return FUNC4(vcpu, err);
		case 8: {
				u8 cr8_prev = FUNC5(vcpu);
				u8 cr8 = (u8)val;
				err = FUNC13(vcpu, cr8);
				ret = FUNC4(vcpu, err);
				if (FUNC15(vcpu))
					return ret;
				if (cr8_prev <= cr8)
					return ret;
				/*
				 * TODO: we might be squashing a
				 * KVM_GUESTDBG_SINGLESTEP-triggered
				 * KVM_EXIT_DEBUG here.
				 */
				vcpu->run->exit_reason = KVM_EXIT_SET_TPR;
				return 0;
			}
		}
		break;
	case 2: /* clts */
		FUNC0(1, "Guest should always own CR0.TS");
		FUNC20(vcpu, FUNC8(vcpu, ~X86_CR0_TS));
		FUNC17(0, FUNC7(vcpu));
		return FUNC14(vcpu);
	case 1: /*mov from cr*/
		switch (cr) {
		case 3:
			FUNC1(enable_unrestricted_guest);
			val = FUNC9(vcpu);
			FUNC11(vcpu, reg, val);
			FUNC16(cr, val);
			return FUNC14(vcpu);
		case 8:
			val = FUNC5(vcpu);
			FUNC11(vcpu, reg, val);
			FUNC16(cr, val);
			return FUNC14(vcpu);
		}
		break;
	case 3: /* lmsw */
		val = (exit_qualification >> LMSW_SOURCE_DATA_SHIFT) & 0x0f;
		FUNC17(0, (FUNC7(vcpu) & ~0xful) | val);
		FUNC6(vcpu, val);

		return FUNC14(vcpu);
	default:
		break;
	}
	vcpu->run->exit_reason = 0;
	FUNC18(vcpu, "unhandled control register: op %d cr %d\n",
	       (int)(exit_qualification >> 4) & 3, cr);
	return 0;
}