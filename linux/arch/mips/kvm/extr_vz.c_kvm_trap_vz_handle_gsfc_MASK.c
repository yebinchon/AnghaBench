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
struct TYPE_3__ {scalar_t__ opcode; scalar_t__ rs; scalar_t__ z; int rt; int rd; int sel; } ;
union mips_instruction {int /*<<< orphan*/  word; TYPE_1__ c0r_format; } ;
typedef  int u32 ;
struct kvm_vcpu_arch {unsigned int* gprs; int aux_inuse; } ;
struct kvm_vcpu {struct kvm_vcpu_arch arch; } ;
typedef  enum emulation_result { ____Placeholder_emulation_result } emulation_result ;
struct TYPE_4__ {int fpu_id; } ;

/* Variables and functions */
 int CAUSEF_BD ; 
 int CAUSEF_DC ; 
 int CAUSEF_IP0 ; 
 int CAUSEF_IP1 ; 
 int CAUSEF_IV ; 
 int CAUSEF_WP ; 
 int EMULATE_DONE ; 
 int EMULATE_FAIL ; 
 int KVM_MIPS_AUX_FPU ; 
 int KVM_MIPS_AUX_MSA ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  KVM_TRACE_MTC0 ; 
 unsigned int MIPS_CONF5_FRE ; 
 int MIPS_CP0_CAUSE ; 
 int MIPS_CP0_CONFIG ; 
 int MIPS_CP0_STATUS ; 
 int MIPS_FPIR_F64 ; 
 unsigned int ST0_CU1 ; 
 unsigned int ST0_FR ; 
 TYPE_2__ boot_cpu_data ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 scalar_t__ cop0_op ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int*,struct kvm_vcpu*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu_arch*) ; 
 unsigned int FUNC9 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*) ; 
 scalar_t__ mtc_op ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 () ; 
 unsigned int FUNC14 () ; 
 unsigned int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC17 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (unsigned int) ; 

__attribute__((used)) static enum emulation_result FUNC22(u32 cause, u32 *opc,
						     struct kvm_vcpu *vcpu)
{
	enum emulation_result er = EMULATE_DONE;
	struct kvm_vcpu_arch *arch = &vcpu->arch;
	union mips_instruction inst;
	int err;

	/*
	 *  Fetch the instruction.
	 */
	if (cause & CAUSEF_BD)
		opc += 1;
	err = FUNC4(opc, vcpu, &inst.word);
	if (err)
		return EMULATE_FAIL;

	/* complete MTC0 on behalf of guest and advance EPC */
	if (inst.c0r_format.opcode == cop0_op &&
	    inst.c0r_format.rs == mtc_op &&
	    inst.c0r_format.z == 0) {
		int rt = inst.c0r_format.rt;
		int rd = inst.c0r_format.rd;
		int sel = inst.c0r_format.sel;
		unsigned int val = arch->gprs[rt];
		unsigned int old_val, change;

		FUNC16(vcpu, KVM_TRACE_MTC0, FUNC0(rd, sel),
			      val);

		if ((rd == MIPS_CP0_STATUS) && (sel == 0)) {
			/* FR bit should read as zero if no FPU */
			if (!FUNC8(&vcpu->arch))
				val &= ~(ST0_CU1 | ST0_FR);

			/*
			 * Also don't allow FR to be set if host doesn't support
			 * it.
			 */
			if (!(boot_cpu_data.fpu_id & MIPS_FPIR_F64))
				val &= ~ST0_FR;

			old_val = FUNC15();
			change = val ^ old_val;

			if (change & ST0_FR) {
				/*
				 * FPU and Vector register state is made
				 * UNPREDICTABLE by a change of FR, so don't
				 * even bother saving it.
				 */
				FUNC2(vcpu);
			}

			/*
			 * If MSA state is already live, it is undefined how it
			 * interacts with FR=0 FPU state, and we don't want to
			 * hit reserved instruction exceptions trying to save
			 * the MSA state later when CU=1 && FR=1, so play it
			 * safe and save it first.
			 */
			if (change & ST0_CU1 && !(val & ST0_FR) &&
			    vcpu->arch.aux_inuse & KVM_MIPS_AUX_MSA)
				FUNC5(vcpu);

			FUNC21(val);
		} else if ((rd == MIPS_CP0_CAUSE) && (sel == 0)) {
			u32 old_cause = FUNC13();
			u32 change = old_cause ^ val;

			/* DC bit enabling/disabling timer? */
			if (change & CAUSEF_DC) {
				if (val & CAUSEF_DC) {
					FUNC10(vcpu);
					FUNC6(vcpu);
				} else {
					FUNC7(vcpu);
				}
			}

			/* Only certain bits are RW to the guest */
			change &= (CAUSEF_DC | CAUSEF_IV | CAUSEF_WP |
				   CAUSEF_IP0 | CAUSEF_IP1);

			/* WP can only be cleared */
			change &= ~CAUSEF_WP | old_cause;

			FUNC18(old_cause ^ change);
		} else if ((rd == MIPS_CP0_STATUS) && (sel == 1)) { /* IntCtl */
			FUNC20(val);
		} else if ((rd == MIPS_CP0_CONFIG) && (sel == 5)) {
			old_val = FUNC14();
			change = val ^ old_val;
			/* Handle changes in FPU/MSA modes */
			FUNC11();

			/*
			 * Propagate FRE changes immediately if the FPU
			 * context is already loaded.
			 */
			if (change & MIPS_CONF5_FRE &&
			    vcpu->arch.aux_inuse & KVM_MIPS_AUX_FPU)
				FUNC1(MIPS_CONF5_FRE, val);

			FUNC12();

			val = old_val ^
				(change & FUNC9(vcpu));
			FUNC19(val);
		} else {
			FUNC3("Handle GSFC, unsupported field change @ %p: %#x\n",
			    opc, inst.word);
			er = EMULATE_FAIL;
		}

		if (er != EMULATE_FAIL)
			er = FUNC17(vcpu, cause);
	} else {
		FUNC3("Handle GSFC, unrecognized instruction @ %p: %#x\n",
			opc, inst.word);
		er = EMULATE_FAIL;
	}

	return er;
}