#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ulong ;
typedef  unsigned long u64 ;
typedef  int u32 ;
struct TYPE_7__ {int xer; int ccr; } ;
struct TYPE_6__ {int (* mfsrin ) (struct kvm_vcpu*,int) ;int (* slbmfee ) (struct kvm_vcpu*,int) ;int (* slbmfev ) (struct kvm_vcpu*,int) ;int /*<<< orphan*/  (* slbfee ) (struct kvm_vcpu*,int,int*) ;int /*<<< orphan*/  (* slbia ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* slbie ) (struct kvm_vcpu*,int) ;int /*<<< orphan*/  (* slbmte ) (struct kvm_vcpu*,int,int) ;int /*<<< orphan*/  (* tlbie ) (struct kvm_vcpu*,int,int) ;int /*<<< orphan*/  (* mtsrin ) (struct kvm_vcpu*,int,int) ;} ;
struct TYPE_8__ {int hcall_needed; int fault_dar; int fault_dsisr; unsigned long texasr; int /*<<< orphan*/  tfiar; int /*<<< orphan*/  tfhar; TYPE_3__ regs; TYPE_2__ mmu; int /*<<< orphan*/  papr_enabled; } ;
struct kvm_vcpu {TYPE_4__ arch; } ;
struct TYPE_5__ {int nr; int* args; } ;
struct kvm_run {int /*<<< orphan*/  exit_reason; TYPE_1__ papr_hcall; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOOK3S_INTERRUPT_DATA_STORAGE ; 
 int /*<<< orphan*/  CPU_FTR_TM ; 
 int CR0_MASK ; 
 int CR0_SHIFT ; 
 int CR0_TBEGIN_FAILURE ; 
 int DSISR_ISSTORE ; 
 int DSISR_NOHPTE ; 
 int DSISR_PROTFAULT ; 
 int EMULATE_AGAIN ; 
 int EMULATE_DONE ; 
 int EMULATE_EXIT_USER ; 
 int EMULATE_FAIL ; 
 int ENOENT ; 
 int EPERM ; 
 int EV_UNIMPLEMENTED ; 
 int /*<<< orphan*/  FSCR_TM_LG ; 
 int /*<<< orphan*/  KVM_EXIT_PAPR_HCALL ; 
 int MSR_EE ; 
 unsigned long MSR_HV ; 
 unsigned long MSR_LE ; 
 int MSR_PR ; 
 int MSR_RI ; 
 unsigned long MSR_SF ; 
 unsigned long MSR_TM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long MSR_TS_S ; 
#define  OP_19_XOP_RFI 152 
#define  OP_19_XOP_RFID 151 
#define  OP_31_XOP_DCBA 150 
#define  OP_31_XOP_DCBZ 149 
#define  OP_31_XOP_EIOIO 148 
#define  OP_31_XOP_FAKE_SC1 147 
#define  OP_31_XOP_MFMSR 146 
#define  OP_31_XOP_MFSR 145 
#define  OP_31_XOP_MFSRIN 144 
#define  OP_31_XOP_MTMSR 143 
#define  OP_31_XOP_MTMSRD 142 
#define  OP_31_XOP_MTSR 141 
#define  OP_31_XOP_MTSRIN 140 
#define  OP_31_XOP_SLBFEE 139 
#define  OP_31_XOP_SLBIA 138 
#define  OP_31_XOP_SLBIE 137 
#define  OP_31_XOP_SLBMFEE 136 
#define  OP_31_XOP_SLBMFEV 135 
#define  OP_31_XOP_SLBMTE 134 
#define  OP_31_XOP_TABORT 133 
#define  OP_31_XOP_TBEGIN 132 
#define  OP_31_XOP_TLBIE 131 
#define  OP_31_XOP_TLBIEL 130 
#define  OP_31_XOP_TRCHKPT 129 
#define  OP_31_XOP_TRECLAIM 128 
 int /*<<< orphan*/  SPRN_TEXASR ; 
 int /*<<< orphan*/  SRR1_PROGPRIV ; 
 int /*<<< orphan*/  SRR1_PROGTM ; 
 unsigned long TEXASR_EXACT ; 
 unsigned long TEXASR_FC_LG ; 
 unsigned long TEXASR_FS ; 
 unsigned long TEXASR_HV ; 
 unsigned long TEXASR_ROT ; 
 int TM_CAUSE_EMULATE ; 
 int TM_CAUSE_PERSISTENT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (unsigned int) ; 
 int FUNC6 (unsigned int) ; 
 int FUNC7 (unsigned int) ; 
 int FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct kvm_run*,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC15 (struct kvm_vcpu*,unsigned long) ; 
 int FUNC16 (struct kvm_vcpu*) ; 
 int FUNC17 (unsigned int,int,int) ; 
 int FUNC18 (struct kvm_vcpu*,int) ; 
 unsigned long FUNC19 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC20 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC21 (struct kvm_vcpu*) ; 
 unsigned long FUNC22 (struct kvm_vcpu*) ; 
 int FUNC23 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC25 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct kvm_vcpu*,int,int) ; 
 int /*<<< orphan*/  FUNC29 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC30 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC32 (struct kvm_vcpu*,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC33 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 () ; 
 int FUNC37 (struct kvm_vcpu*,int) ; 
 int FUNC38 (struct kvm_vcpu*,int) ; 
 int FUNC39 (struct kvm_vcpu*,int) ; 
 int FUNC40 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC41 (struct kvm_vcpu*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC42 (struct kvm_vcpu*,int,int) ; 
 int /*<<< orphan*/  FUNC43 (struct kvm_vcpu*,int,int) ; 
 int /*<<< orphan*/  FUNC44 (struct kvm_vcpu*,int,int) ; 
 int /*<<< orphan*/  FUNC45 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC46 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC47 (struct kvm_vcpu*,int,int*) ; 
 unsigned int FUNC48 (int) ; 
 int /*<<< orphan*/  FUNC49 () ; 
 int /*<<< orphan*/  FUNC50 () ; 

int FUNC51(struct kvm_run *run, struct kvm_vcpu *vcpu,
			      unsigned int inst, int *advance)
{
	int emulated = EMULATE_DONE;
	int rt = FUNC8(inst);
	int rs = FUNC7(inst);
	int ra = FUNC5(inst);
	int rb = FUNC6(inst);
	u32 inst_sc = 0x44000002;

	switch (FUNC4(inst)) {
	case 0:
		emulated = EMULATE_FAIL;
		if ((FUNC19(vcpu) & MSR_LE) &&
		    (inst == FUNC48(inst_sc))) {
			/*
			 * This is the byte reversed syscall instruction of our
			 * hypercall handler. Early versions of LE Linux didn't
			 * swap the instructions correctly and ended up in
			 * illegal instructions.
			 * Just always fail hypercalls on these broken systems.
			 */
			FUNC28(vcpu, 3, EV_UNIMPLEMENTED);
			FUNC31(vcpu, FUNC20(vcpu) + 4);
			emulated = EMULATE_DONE;
		}
		break;
	case 19:
		switch (FUNC9(inst)) {
		case OP_19_XOP_RFID:
		case OP_19_XOP_RFI: {
			unsigned long srr1 = FUNC22(vcpu);
#ifdef CONFIG_PPC_TRANSACTIONAL_MEM
			unsigned long cur_msr = kvmppc_get_msr(vcpu);

			/*
			 * add rules to fit in ISA specification regarding TM
			 * state transistion in TM disable/Suspended state,
			 * and target TM state is TM inactive(00) state. (the
			 * change should be suppressed).
			 */
			if (((cur_msr & MSR_TM) == 0) &&
				((srr1 & MSR_TM) == 0) &&
				MSR_TM_SUSPENDED(cur_msr) &&
				!MSR_TM_ACTIVE(srr1))
				srr1 |= MSR_TS_S;
#endif
			FUNC31(vcpu, FUNC21(vcpu));
			FUNC29(vcpu, srr1);
			*advance = 0;
			break;
		}

		default:
			emulated = EMULATE_FAIL;
			break;
		}
		break;
	case 31:
		switch (FUNC9(inst)) {
		case OP_31_XOP_MFMSR:
			FUNC28(vcpu, rt, FUNC19(vcpu));
			break;
		case OP_31_XOP_MTMSRD:
		{
			ulong rs_val = FUNC18(vcpu, rs);
			if (inst & 0x10000) {
				ulong new_msr = FUNC19(vcpu);
				new_msr &= ~(MSR_RI | MSR_EE);
				new_msr |= rs_val & (MSR_RI | MSR_EE);
				FUNC30(vcpu, new_msr);
			} else
				FUNC29(vcpu, rs_val);
			break;
		}
		case OP_31_XOP_MTMSR:
			FUNC29(vcpu, FUNC18(vcpu, rs));
			break;
		case OP_31_XOP_MFSR:
		{
			int srnum;

			srnum = FUNC17(inst, 12 + 32, 15 + 32);
			if (vcpu->arch.mmu.mfsrin) {
				u32 sr;
				sr = vcpu->arch.mmu.mfsrin(vcpu, srnum);
				FUNC28(vcpu, rt, sr);
			}
			break;
		}
		case OP_31_XOP_MFSRIN:
		{
			int srnum;

			srnum = (FUNC18(vcpu, rb) >> 28) & 0xf;
			if (vcpu->arch.mmu.mfsrin) {
				u32 sr;
				sr = vcpu->arch.mmu.mfsrin(vcpu, srnum);
				FUNC28(vcpu, rt, sr);
			}
			break;
		}
		case OP_31_XOP_MTSR:
			vcpu->arch.mmu.mtsrin(vcpu,
				(inst >> 16) & 0xf,
				FUNC18(vcpu, rs));
			break;
		case OP_31_XOP_MTSRIN:
			vcpu->arch.mmu.mtsrin(vcpu,
				(FUNC18(vcpu, rb) >> 28) & 0xf,
				FUNC18(vcpu, rs));
			break;
		case OP_31_XOP_TLBIE:
		case OP_31_XOP_TLBIEL:
		{
			bool large = (inst & 0x00200000) ? true : false;
			ulong addr = FUNC18(vcpu, rb);
			vcpu->arch.mmu.tlbie(vcpu, addr, large);
			break;
		}
#ifdef CONFIG_PPC_BOOK3S_64
		case OP_31_XOP_FAKE_SC1:
		{
			/* SC 1 papr hypercalls */
			ulong cmd = kvmppc_get_gpr(vcpu, 3);
			int i;

		        if ((kvmppc_get_msr(vcpu) & MSR_PR) ||
			    !vcpu->arch.papr_enabled) {
				emulated = EMULATE_FAIL;
				break;
			}

			if (kvmppc_h_pr(vcpu, cmd) == EMULATE_DONE)
				break;

			run->papr_hcall.nr = cmd;
			for (i = 0; i < 9; ++i) {
				ulong gpr = kvmppc_get_gpr(vcpu, 4 + i);
				run->papr_hcall.args[i] = gpr;
			}

			run->exit_reason = KVM_EXIT_PAPR_HCALL;
			vcpu->arch.hcall_needed = 1;
			emulated = EMULATE_EXIT_USER;
			break;
		}
#endif
		case OP_31_XOP_EIOIO:
			break;
		case OP_31_XOP_SLBMTE:
			if (!vcpu->arch.mmu.slbmte)
				return EMULATE_FAIL;

			vcpu->arch.mmu.slbmte(vcpu,
					FUNC18(vcpu, rs),
					FUNC18(vcpu, rb));
			break;
		case OP_31_XOP_SLBIE:
			if (!vcpu->arch.mmu.slbie)
				return EMULATE_FAIL;

			vcpu->arch.mmu.slbie(vcpu,
					FUNC18(vcpu, rb));
			break;
		case OP_31_XOP_SLBIA:
			if (!vcpu->arch.mmu.slbia)
				return EMULATE_FAIL;

			vcpu->arch.mmu.slbia(vcpu);
			break;
		case OP_31_XOP_SLBFEE:
			if (!(inst & 1) || !vcpu->arch.mmu.slbfee) {
				return EMULATE_FAIL;
			} else {
				ulong b, t;
				ulong cr = FUNC16(vcpu) & ~CR0_MASK;

				b = FUNC18(vcpu, rb);
				if (!vcpu->arch.mmu.slbfee(vcpu, b, &t))
					cr |= 2 << CR0_SHIFT;
				FUNC28(vcpu, rt, t);
				/* copy XER[SO] bit to CR0[SO] */
				cr |= (vcpu->arch.regs.xer & 0x80000000) >>
					(31 - CR0_SHIFT);
				FUNC25(vcpu, cr);
			}
			break;
		case OP_31_XOP_SLBMFEE:
			if (!vcpu->arch.mmu.slbmfee) {
				emulated = EMULATE_FAIL;
			} else {
				ulong t, rb_val;

				rb_val = FUNC18(vcpu, rb);
				t = vcpu->arch.mmu.slbmfee(vcpu, rb_val);
				FUNC28(vcpu, rt, t);
			}
			break;
		case OP_31_XOP_SLBMFEV:
			if (!vcpu->arch.mmu.slbmfev) {
				emulated = EMULATE_FAIL;
			} else {
				ulong t, rb_val;

				rb_val = FUNC18(vcpu, rb);
				t = vcpu->arch.mmu.slbmfev(vcpu, rb_val);
				FUNC28(vcpu, rt, t);
			}
			break;
		case OP_31_XOP_DCBA:
			/* Gets treated as NOP */
			break;
		case OP_31_XOP_DCBZ:
		{
			ulong rb_val = FUNC18(vcpu, rb);
			ulong ra_val = 0;
			ulong addr, vaddr;
			u32 zeros[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };
			u32 dsisr;
			int r;

			if (ra)
				ra_val = FUNC18(vcpu, ra);

			addr = (ra_val + rb_val) & ~31ULL;
			if (!(FUNC19(vcpu) & MSR_SF))
				addr &= 0xffffffff;
			vaddr = addr;

			r = FUNC32(vcpu, &addr, 32, zeros, true);
			if ((r == -ENOENT) || (r == -EPERM)) {
				*advance = 0;
				FUNC26(vcpu, vaddr);
				vcpu->arch.fault_dar = vaddr;

				dsisr = DSISR_ISSTORE;
				if (r == -ENOENT)
					dsisr |= DSISR_NOHPTE;
				else if (r == -EPERM)
					dsisr |= DSISR_PROTFAULT;

				FUNC27(vcpu, dsisr);
				vcpu->arch.fault_dsisr = dsisr;

				FUNC10(vcpu,
					BOOK3S_INTERRUPT_DATA_STORAGE);
			}

			break;
		}
#ifdef CONFIG_PPC_TRANSACTIONAL_MEM
		case OP_31_XOP_TBEGIN:
		{
			if (!cpu_has_feature(CPU_FTR_TM))
				break;

			if (!(kvmppc_get_msr(vcpu) & MSR_TM)) {
				kvmppc_trigger_fac_interrupt(vcpu, FSCR_TM_LG);
				emulated = EMULATE_AGAIN;
				break;
			}

			if (!(kvmppc_get_msr(vcpu) & MSR_PR)) {
				preempt_disable();
				vcpu->arch.regs.ccr = (CR0_TBEGIN_FAILURE |
				  (vcpu->arch.regs.ccr & ~(CR0_MASK << CR0_SHIFT)));

				vcpu->arch.texasr = (TEXASR_FS | TEXASR_EXACT |
					(((u64)(TM_CAUSE_EMULATE | TM_CAUSE_PERSISTENT))
						 << TEXASR_FC_LG));

				if ((inst >> 21) & 0x1)
					vcpu->arch.texasr |= TEXASR_ROT;

				if (kvmppc_get_msr(vcpu) & MSR_HV)
					vcpu->arch.texasr |= TEXASR_HV;

				vcpu->arch.tfhar = kvmppc_get_pc(vcpu) + 4;
				vcpu->arch.tfiar = kvmppc_get_pc(vcpu);

				kvmppc_restore_tm_sprs(vcpu);
				preempt_enable();
			} else
				emulated = EMULATE_FAIL;
			break;
		}
		case OP_31_XOP_TABORT:
		{
			ulong guest_msr = kvmppc_get_msr(vcpu);
			unsigned long ra_val = 0;

			if (!cpu_has_feature(CPU_FTR_TM))
				break;

			if (!(kvmppc_get_msr(vcpu) & MSR_TM)) {
				kvmppc_trigger_fac_interrupt(vcpu, FSCR_TM_LG);
				emulated = EMULATE_AGAIN;
				break;
			}

			/* only emulate for privilege guest, since problem state
			 * guest can run with TM enabled and we don't expect to
			 * trap at here for that case.
			 */
			WARN_ON(guest_msr & MSR_PR);

			if (ra)
				ra_val = kvmppc_get_gpr(vcpu, ra);

			kvmppc_emulate_tabort(vcpu, ra_val);
			break;
		}
		case OP_31_XOP_TRECLAIM:
		{
			ulong guest_msr = kvmppc_get_msr(vcpu);
			unsigned long ra_val = 0;

			if (!cpu_has_feature(CPU_FTR_TM))
				break;

			if (!(kvmppc_get_msr(vcpu) & MSR_TM)) {
				kvmppc_trigger_fac_interrupt(vcpu, FSCR_TM_LG);
				emulated = EMULATE_AGAIN;
				break;
			}

			/* generate interrupts based on priorities */
			if (guest_msr & MSR_PR) {
				/* Privileged Instruction type Program Interrupt */
				kvmppc_core_queue_program(vcpu, SRR1_PROGPRIV);
				emulated = EMULATE_AGAIN;
				break;
			}

			if (!MSR_TM_ACTIVE(guest_msr)) {
				/* TM bad thing interrupt */
				kvmppc_core_queue_program(vcpu, SRR1_PROGTM);
				emulated = EMULATE_AGAIN;
				break;
			}

			if (ra)
				ra_val = kvmppc_get_gpr(vcpu, ra);
			kvmppc_emulate_treclaim(vcpu, ra_val);
			break;
		}
		case OP_31_XOP_TRCHKPT:
		{
			ulong guest_msr = kvmppc_get_msr(vcpu);
			unsigned long texasr;

			if (!cpu_has_feature(CPU_FTR_TM))
				break;

			if (!(kvmppc_get_msr(vcpu) & MSR_TM)) {
				kvmppc_trigger_fac_interrupt(vcpu, FSCR_TM_LG);
				emulated = EMULATE_AGAIN;
				break;
			}

			/* generate interrupt based on priorities */
			if (guest_msr & MSR_PR) {
				/* Privileged Instruction type Program Intr */
				kvmppc_core_queue_program(vcpu, SRR1_PROGPRIV);
				emulated = EMULATE_AGAIN;
				break;
			}

			tm_enable();
			texasr = mfspr(SPRN_TEXASR);
			tm_disable();

			if (MSR_TM_ACTIVE(guest_msr) ||
				!(texasr & (TEXASR_FS))) {
				/* TM bad thing interrupt */
				kvmppc_core_queue_program(vcpu, SRR1_PROGTM);
				emulated = EMULATE_AGAIN;
				break;
			}

			kvmppc_emulate_trchkpt(vcpu);
			break;
		}
#endif
		default:
			emulated = EMULATE_FAIL;
		}
		break;
	default:
		emulated = EMULATE_FAIL;
	}

	if (emulated == EMULATE_FAIL)
		emulated = FUNC12(run, vcpu);

	return emulated;
}