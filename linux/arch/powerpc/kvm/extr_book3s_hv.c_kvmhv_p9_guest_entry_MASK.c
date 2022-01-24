#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
typedef  scalar_t__ u32 ;
struct lppaca {int pmcregs_in_use; void* yield_count; } ;
struct kvmppc_vcore {int entry_exit_map; int in_guest; } ;
struct TYPE_13__ {int dirty; struct lppaca* pinned_addr; } ;
struct TYPE_11__ {unsigned long dar; unsigned long dsisr; int /*<<< orphan*/  msr; } ;
struct hv_guest_state {unsigned long lpcr; int /*<<< orphan*/  msr; void* hdec_expiry; int /*<<< orphan*/  vcpu_token; int /*<<< orphan*/  lpid; int /*<<< orphan*/  version; } ;
struct TYPE_14__ {unsigned long vrsave; unsigned long dscr; unsigned long iamr; unsigned long pspb; unsigned long fscr; unsigned long tar; unsigned long ebbhr; unsigned long ebbrr; unsigned long bescr; unsigned long wort; unsigned long tid; unsigned long amr; unsigned long uamor; int ctrl; unsigned long dec_expires; unsigned long psscr; int thread_cpu; TYPE_5__ vpa; TYPE_3__ shregs; int /*<<< orphan*/  vr; int /*<<< orphan*/  fp; scalar_t__ slb_max; TYPE_2__* nested; struct hv_guest_state regs; int /*<<< orphan*/  nested_vcpu_id; scalar_t__ ceded; struct kvmppc_vcore* vcore; } ;
struct kvm_vcpu {int cpu; TYPE_7__* kvm; TYPE_6__ arch; int /*<<< orphan*/  vcpu_id; } ;
typedef  int s64 ;
typedef  int s32 ;
struct TYPE_12__ {unsigned long dec_expires; } ;
struct TYPE_16__ {unsigned long sprg_vdso; TYPE_4__ kvm_hstate; } ;
struct TYPE_9__ {int /*<<< orphan*/  lpid; } ;
struct TYPE_15__ {TYPE_1__ arch; } ;
struct TYPE_10__ {int /*<<< orphan*/  shadow_lpid; } ;

/* Variables and functions */
 int BOOK3S_INTERRUPT_HV_DECREMENTER ; 
 int BOOK3S_INTERRUPT_SYSCALL ; 
 int /*<<< orphan*/  CPU_FTR_P9_TM_HV_ASSIST ; 
 int /*<<< orphan*/  CPU_FTR_TM ; 
 int /*<<< orphan*/  HV_GUEST_STATE_VERSION ; 
 scalar_t__ H_CEDE ; 
 int /*<<< orphan*/  H_ENTER_NESTED ; 
 unsigned long LPCR_LD ; 
 int MSR_FP ; 
 int MSR_VEC ; 
 int MSR_VSX ; 
 int /*<<< orphan*/  SPRN_AMR ; 
 int /*<<< orphan*/  SPRN_BESCR ; 
 int /*<<< orphan*/  SPRN_CTRLF ; 
 int /*<<< orphan*/  SPRN_CTRLT ; 
 int /*<<< orphan*/  SPRN_DAR ; 
 int /*<<< orphan*/  SPRN_DEC ; 
 int /*<<< orphan*/  SPRN_DSCR ; 
 int /*<<< orphan*/  SPRN_DSISR ; 
 int /*<<< orphan*/  SPRN_EBBHR ; 
 int /*<<< orphan*/  SPRN_EBBRR ; 
 int /*<<< orphan*/  SPRN_FSCR ; 
 int /*<<< orphan*/  SPRN_IAMR ; 
 int /*<<< orphan*/  SPRN_PSPB ; 
 int /*<<< orphan*/  SPRN_PSSCR_PR ; 
 int /*<<< orphan*/  SPRN_SPRG_VDSO_WRITE ; 
 int /*<<< orphan*/  SPRN_TAR ; 
 int /*<<< orphan*/  SPRN_TIDR ; 
 int /*<<< orphan*/  SPRN_UAMOR ; 
 int /*<<< orphan*/  SPRN_VRSAVE ; 
 int /*<<< orphan*/  SPRN_WORT ; 
 int /*<<< orphan*/  FUNC0 (struct hv_guest_state*) ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct kvm_vcpu*,void*,unsigned long) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,struct hv_guest_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*,struct hv_guest_state*) ; 
 scalar_t__ FUNC12 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct kvm_vcpu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 TYPE_8__* local_paca ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC24 (TYPE_7__*) ; 
 int FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

int FUNC28(struct kvm_vcpu *vcpu, u64 time_limit,
			 unsigned long lpcr)
{
	struct kvmppc_vcore *vc = vcpu->arch.vcore;
	unsigned long host_dscr = FUNC20(SPRN_DSCR);
	unsigned long host_tidr = FUNC20(SPRN_TIDR);
	unsigned long host_iamr = FUNC20(SPRN_IAMR);
	unsigned long host_amr = FUNC20(SPRN_AMR);
	s64 dec;
	u64 tb;
	int trap, save_pmu;

	dec = FUNC20(SPRN_DEC);
	tb = FUNC21();
	if (dec < 512)
		return BOOK3S_INTERRUPT_HV_DECREMENTER;
	local_paca->kvm_hstate.dec_expires = dec + tb;
	if (local_paca->kvm_hstate.dec_expires < time_limit)
		time_limit = local_paca->kvm_hstate.dec_expires;

	vcpu->arch.ceded = 0;

	FUNC10();		/* saves it to PACA kvm_hstate */

	FUNC16();

	vc->entry_exit_map = 1;
	vc->in_guest = 1;

	if (vcpu->arch.vpa.pinned_addr) {
		struct lppaca *lp = vcpu->arch.vpa.pinned_addr;
		u32 yield_count = FUNC1(lp->yield_count) + 1;
		lp->yield_count = FUNC3(yield_count);
		vcpu->arch.vpa.dirty = 1;
	}

	if (FUNC2(CPU_FTR_TM) ||
	    FUNC2(CPU_FTR_P9_TM_HV_ASSIST))
		FUNC14(vcpu, vcpu->arch.shregs.msr, true);

	FUNC4(vcpu);

	FUNC22(MSR_FP | MSR_VEC | MSR_VSX);
	FUNC18(&vcpu->arch.fp);
#ifdef CONFIG_ALTIVEC
	load_vr_state(&vcpu->arch.vr);
#endif
	FUNC23(SPRN_VRSAVE, vcpu->arch.vrsave);

	FUNC23(SPRN_DSCR, vcpu->arch.dscr);
	FUNC23(SPRN_IAMR, vcpu->arch.iamr);
	FUNC23(SPRN_PSPB, vcpu->arch.pspb);
	FUNC23(SPRN_FSCR, vcpu->arch.fscr);
	FUNC23(SPRN_TAR, vcpu->arch.tar);
	FUNC23(SPRN_EBBHR, vcpu->arch.ebbhr);
	FUNC23(SPRN_EBBRR, vcpu->arch.ebbrr);
	FUNC23(SPRN_BESCR, vcpu->arch.bescr);
	FUNC23(SPRN_WORT, vcpu->arch.wort);
	FUNC23(SPRN_TIDR, vcpu->arch.tid);
	FUNC23(SPRN_DAR, vcpu->arch.shregs.dar);
	FUNC23(SPRN_DSISR, vcpu->arch.shregs.dsisr);
	FUNC23(SPRN_AMR, vcpu->arch.amr);
	FUNC23(SPRN_UAMOR, vcpu->arch.uamor);

	if (!(vcpu->arch.ctrl & 1))
		FUNC23(SPRN_CTRLT, FUNC20(SPRN_CTRLF) & ~1);

	FUNC23(SPRN_DEC, vcpu->arch.dec_expires - FUNC21());

	if (FUNC7()) {
		/*
		 * We need to save and restore the guest visible part of the
		 * psscr (i.e. using SPRN_PSSCR_PR) since the hypervisor
		 * doesn't do this for us. Note only required if pseries since
		 * this is done in kvmhv_load_hv_regs_and_go() below otherwise.
		 */
		unsigned long host_psscr;
		/* call our hypervisor to load up HV regs and go */
		struct hv_guest_state hvregs;

		host_psscr = FUNC20(SPRN_PSSCR_PR);
		FUNC23(SPRN_PSSCR_PR, vcpu->arch.psscr);
		FUNC11(vcpu, &hvregs);
		hvregs.lpcr = lpcr;
		vcpu->arch.regs.msr = vcpu->arch.shregs.msr;
		hvregs.version = HV_GUEST_STATE_VERSION;
		if (vcpu->arch.nested) {
			hvregs.lpid = vcpu->arch.nested->shadow_lpid;
			hvregs.vcpu_token = vcpu->arch.nested_vcpu_id;
		} else {
			hvregs.lpid = vcpu->kvm->arch.lpid;
			hvregs.vcpu_token = vcpu->vcpu_id;
		}
		hvregs.hdec_expiry = time_limit;
		trap = FUNC25(H_ENTER_NESTED, FUNC0(&hvregs),
					  FUNC0(&vcpu->arch.regs));
		FUNC8(vcpu, &hvregs);
		vcpu->arch.shregs.msr = vcpu->arch.regs.msr;
		vcpu->arch.shregs.dar = FUNC20(SPRN_DAR);
		vcpu->arch.shregs.dsisr = FUNC20(SPRN_DSISR);
		vcpu->arch.psscr = FUNC20(SPRN_PSSCR_PR);
		FUNC23(SPRN_PSSCR_PR, host_psscr);

		/* H_CEDE has to be handled now, not later */
		if (trap == BOOK3S_INTERRUPT_SYSCALL && !vcpu->arch.nested &&
		    FUNC12(vcpu, 3) == H_CEDE) {
			FUNC13(vcpu);
			trap = 0;
		}
	} else {
		trap = FUNC6(vcpu, time_limit, lpcr);
	}

	vcpu->arch.slb_max = 0;
	dec = FUNC20(SPRN_DEC);
	if (!(lpcr & LPCR_LD)) /* Sign extend if not using large decrementer */
		dec = (s32) dec;
	tb = FUNC21();
	vcpu->arch.dec_expires = dec + tb;
	vcpu->cpu = -1;
	vcpu->arch.thread_cpu = -1;
	vcpu->arch.ctrl = FUNC20(SPRN_CTRLF);

	vcpu->arch.iamr = FUNC20(SPRN_IAMR);
	vcpu->arch.pspb = FUNC20(SPRN_PSPB);
	vcpu->arch.fscr = FUNC20(SPRN_FSCR);
	vcpu->arch.tar = FUNC20(SPRN_TAR);
	vcpu->arch.ebbhr = FUNC20(SPRN_EBBHR);
	vcpu->arch.ebbrr = FUNC20(SPRN_EBBRR);
	vcpu->arch.bescr = FUNC20(SPRN_BESCR);
	vcpu->arch.wort = FUNC20(SPRN_WORT);
	vcpu->arch.tid = FUNC20(SPRN_TIDR);
	vcpu->arch.amr = FUNC20(SPRN_AMR);
	vcpu->arch.uamor = FUNC20(SPRN_UAMOR);
	vcpu->arch.dscr = FUNC20(SPRN_DSCR);

	FUNC23(SPRN_PSPB, 0);
	FUNC23(SPRN_WORT, 0);
	FUNC23(SPRN_UAMOR, 0);
	FUNC23(SPRN_DSCR, host_dscr);
	FUNC23(SPRN_TIDR, host_tidr);
	FUNC23(SPRN_IAMR, host_iamr);
	FUNC23(SPRN_PSPB, 0);

	if (host_amr != vcpu->arch.amr)
		FUNC23(SPRN_AMR, host_amr);

	FUNC22(MSR_FP | MSR_VEC | MSR_VSX);
	FUNC26(&vcpu->arch.fp);
#ifdef CONFIG_ALTIVEC
	store_vr_state(&vcpu->arch.vr);
#endif
	vcpu->arch.vrsave = FUNC20(SPRN_VRSAVE);

	if (FUNC2(CPU_FTR_TM) ||
	    FUNC2(CPU_FTR_P9_TM_HV_ASSIST))
		FUNC15(vcpu, vcpu->arch.shregs.msr, true);

	save_pmu = 1;
	if (vcpu->arch.vpa.pinned_addr) {
		struct lppaca *lp = vcpu->arch.vpa.pinned_addr;
		u32 yield_count = FUNC1(lp->yield_count) + 1;
		lp->yield_count = FUNC3(yield_count);
		vcpu->arch.vpa.dirty = 1;
		save_pmu = lp->pmcregs_in_use;
	}
	/* Must save pmu if this guest is capable of running nested guests */
	save_pmu |= FUNC24(vcpu->kvm);

	FUNC9(vcpu, save_pmu);

	vc->entry_exit_map = 0x101;
	vc->in_guest = 0;

	FUNC23(SPRN_DEC, local_paca->kvm_hstate.dec_expires - FUNC21());
	FUNC23(SPRN_SPRG_VDSO_WRITE, local_paca->sprg_vdso);

	FUNC5();

	FUNC17();

	return trap;
}