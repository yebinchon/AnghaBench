#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kvm_vcpu {int dummy; } ;
struct kvm_run {int dummy; } ;
typedef  int /*<<< orphan*/  gva_t ;

/* Variables and functions */
 int EMULATE_DONE ; 
 int EMULATE_FAIL ; 
#define  XOP_DCBTLS 137 
#define  XOP_EHPRIV 136 
#define  XOP_MFTMR 135 
#define  XOP_MSGCLR 134 
#define  XOP_MSGSND 133 
#define  XOP_TLBILX 132 
#define  XOP_TLBIVAX 131 
#define  XOP_TLBRE 130 
#define  XOP_TLBSX 129 
#define  XOP_TLBWE 128 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int FUNC5 (struct kvm_run*,struct kvm_vcpu*,unsigned int,int*) ; 
 int FUNC6 (struct kvm_vcpu*) ; 
 int FUNC7 (struct kvm_run*,struct kvm_vcpu*,unsigned int,int*) ; 
 int FUNC8 (struct kvm_vcpu*,unsigned int,int) ; 
 int FUNC9 (struct kvm_vcpu*,int) ; 
 int FUNC10 (struct kvm_vcpu*,int) ; 
 int FUNC11 (struct kvm_vcpu*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct kvm_vcpu*) ; 
 int FUNC14 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC16 (struct kvm_vcpu*,int,int) ; 

int FUNC17(struct kvm_run *run, struct kvm_vcpu *vcpu,
				unsigned int inst, int *advance)
{
	int emulated = EMULATE_DONE;
	int ra = FUNC1(inst);
	int rb = FUNC2(inst);
	int rt = FUNC3(inst);
	gva_t ea;

	switch (FUNC0(inst)) {
	case 31:
		switch (FUNC4(inst)) {

		case XOP_DCBTLS:
			emulated = FUNC6(vcpu);
			break;

#ifdef CONFIG_KVM_E500MC
		case XOP_MSGSND:
			emulated = kvmppc_e500_emul_msgsnd(vcpu, rb);
			break;

		case XOP_MSGCLR:
			emulated = kvmppc_e500_emul_msgclr(vcpu, rb);
			break;
#endif

		case XOP_TLBRE:
			emulated = FUNC13(vcpu);
			break;

		case XOP_TLBWE:
			emulated = FUNC15(vcpu);
			break;

		case XOP_TLBSX:
			ea = FUNC16(vcpu, ra, rb);
			emulated = FUNC14(vcpu, ea);
			break;

		case XOP_TLBILX: {
			int type = rt & 0x3;
			ea = FUNC16(vcpu, ra, rb);
			emulated = FUNC11(vcpu, type, ea);
			break;
		}

		case XOP_TLBIVAX:
			ea = FUNC16(vcpu, ra, rb);
			emulated = FUNC12(vcpu, ea);
			break;

		case XOP_MFTMR:
			emulated = FUNC8(vcpu, inst, rt);
			break;

		case XOP_EHPRIV:
			emulated = FUNC7(run, vcpu, inst,
							   advance);
			break;

		default:
			emulated = EMULATE_FAIL;
		}

		break;

	default:
		emulated = EMULATE_FAIL;
	}

	if (emulated == EMULATE_FAIL)
		emulated = FUNC5(run, vcpu, inst, advance);

	return emulated;
}