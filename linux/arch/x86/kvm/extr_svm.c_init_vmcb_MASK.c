#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int limit; } ;
struct TYPE_13__ {int limit; } ;
struct TYPE_12__ {int selector; int base; int attrib; int limit; } ;
struct vmcb_save_area {int dr6; int rip; scalar_t__ cr4; scalar_t__ cr3; int /*<<< orphan*/  g_pat; int /*<<< orphan*/  tr; int /*<<< orphan*/  ldtr; TYPE_3__ idtr; TYPE_2__ gdtr; TYPE_1__ cs; int /*<<< orphan*/  gs; int /*<<< orphan*/  fs; int /*<<< orphan*/  ds; int /*<<< orphan*/  ss; int /*<<< orphan*/  es; } ;
struct vmcb_control_area {int /*<<< orphan*/  nested_ctl; int /*<<< orphan*/  int_ctl; int /*<<< orphan*/  virt_ext; scalar_t__ pause_filter_thresh; scalar_t__ pause_filter_count; void* msrpm_base_pa; void* iopm_base_pa; } ;
struct TYPE_16__ {int* regs; scalar_t__ hflags; int /*<<< orphan*/  pat; } ;
struct TYPE_17__ {int /*<<< orphan*/  kvm; TYPE_5__ arch; } ;
struct TYPE_15__ {scalar_t__ vmcb; } ;
struct vcpu_svm {TYPE_8__* vmcb; TYPE_6__ vcpu; TYPE_4__ nested; scalar_t__ asid_generation; int /*<<< orphan*/  msrpm; } ;
struct TYPE_18__ {struct vmcb_control_area control; struct vmcb_save_area save; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VECTOR ; 
 int /*<<< orphan*/  DB_VECTOR ; 
 int /*<<< orphan*/  GP_VECTOR ; 
 int /*<<< orphan*/  INTERCEPT_CLGI ; 
 int /*<<< orphan*/  INTERCEPT_CPUID ; 
 int /*<<< orphan*/  INTERCEPT_CR0_READ ; 
 int /*<<< orphan*/  INTERCEPT_CR0_WRITE ; 
 int /*<<< orphan*/  INTERCEPT_CR3_READ ; 
 int /*<<< orphan*/  INTERCEPT_CR3_WRITE ; 
 int /*<<< orphan*/  INTERCEPT_CR4_READ ; 
 int /*<<< orphan*/  INTERCEPT_CR4_WRITE ; 
 int /*<<< orphan*/  INTERCEPT_CR8_WRITE ; 
 int /*<<< orphan*/  INTERCEPT_HLT ; 
 int /*<<< orphan*/  INTERCEPT_INTR ; 
 int /*<<< orphan*/  INTERCEPT_INVD ; 
 int /*<<< orphan*/  INTERCEPT_INVLPG ; 
 int /*<<< orphan*/  INTERCEPT_INVLPGA ; 
 int /*<<< orphan*/  INTERCEPT_IOIO_PROT ; 
 int /*<<< orphan*/  INTERCEPT_MONITOR ; 
 int /*<<< orphan*/  INTERCEPT_MSR_PROT ; 
 int /*<<< orphan*/  INTERCEPT_MWAIT ; 
 int /*<<< orphan*/  INTERCEPT_NMI ; 
 int /*<<< orphan*/  INTERCEPT_PAUSE ; 
 int /*<<< orphan*/  INTERCEPT_RDPMC ; 
 int /*<<< orphan*/  INTERCEPT_RDPRU ; 
 int /*<<< orphan*/  INTERCEPT_RSM ; 
 int /*<<< orphan*/  INTERCEPT_SELECTIVE_CR0 ; 
 int /*<<< orphan*/  INTERCEPT_SHUTDOWN ; 
 int /*<<< orphan*/  INTERCEPT_SKINIT ; 
 int /*<<< orphan*/  INTERCEPT_SMI ; 
 int /*<<< orphan*/  INTERCEPT_STGI ; 
 int /*<<< orphan*/  INTERCEPT_TASK_SWITCH ; 
 int /*<<< orphan*/  INTERCEPT_VMLOAD ; 
 int /*<<< orphan*/  INTERCEPT_VMMCALL ; 
 int /*<<< orphan*/  INTERCEPT_VMRUN ; 
 int /*<<< orphan*/  INTERCEPT_VMSAVE ; 
 int /*<<< orphan*/  INTERCEPT_WBINVD ; 
 int /*<<< orphan*/  INTERCEPT_XSETBV ; 
 int /*<<< orphan*/  MC_VECTOR ; 
 int /*<<< orphan*/  PF_VECTOR ; 
 int /*<<< orphan*/  SEG_TYPE_BUSY_TSS16 ; 
 int /*<<< orphan*/  SEG_TYPE_LDT ; 
 int /*<<< orphan*/  SVM_NESTED_CTL_NP_ENABLE ; 
 int /*<<< orphan*/  SVM_NESTED_CTL_SEV_ENABLE ; 
 int SVM_SELECTOR_CODE_MASK ; 
 int SVM_SELECTOR_P_MASK ; 
 int SVM_SELECTOR_READ_MASK ; 
 int SVM_SELECTOR_S_MASK ; 
 int /*<<< orphan*/  UD_VECTOR ; 
 size_t VCPU_REGS_RIP ; 
 int /*<<< orphan*/  VIRTUAL_VMLOAD_VMSAVE_ENABLE_MASK ; 
 int /*<<< orphan*/  V_GIF_ENABLE_MASK ; 
 int /*<<< orphan*/  V_INTR_MASKING_MASK ; 
 int X86_CR0_CD ; 
 int X86_CR0_ET ; 
 int X86_CR0_NW ; 
 scalar_t__ X86_CR4_PAE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC3 (struct vcpu_svm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vcpu_svm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vcpu_svm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vcpu_svm*) ; 
 scalar_t__ enable_vmware_backdoor ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iopm_base ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,int) ; 
 scalar_t__ FUNC13 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_8__*) ; 
 scalar_t__ npt_enabled ; 
 scalar_t__ pause_filter_count ; 
 scalar_t__ pause_filter_thresh ; 
 int /*<<< orphan*/  FUNC15 (struct vcpu_svm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC17 (struct vcpu_svm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct vcpu_svm*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ vgif ; 
 scalar_t__ vls ; 

__attribute__((used)) static void FUNC22(struct vcpu_svm *svm)
{
	struct vmcb_control_area *control = &svm->vmcb->control;
	struct vmcb_save_area *save = &svm->vmcb->save;

	svm->vcpu.arch.hflags = 0;

	FUNC15(svm, INTERCEPT_CR0_READ);
	FUNC15(svm, INTERCEPT_CR3_READ);
	FUNC15(svm, INTERCEPT_CR4_READ);
	FUNC15(svm, INTERCEPT_CR0_WRITE);
	FUNC15(svm, INTERCEPT_CR3_WRITE);
	FUNC15(svm, INTERCEPT_CR4_WRITE);
	if (!FUNC13(&svm->vcpu))
		FUNC15(svm, INTERCEPT_CR8_WRITE);

	FUNC16(svm);

	FUNC17(svm, PF_VECTOR);
	FUNC17(svm, UD_VECTOR);
	FUNC17(svm, MC_VECTOR);
	FUNC17(svm, AC_VECTOR);
	FUNC17(svm, DB_VECTOR);
	/*
	 * Guest access to VMware backdoor ports could legitimately
	 * trigger #GP because of TSS I/O permission bitmap.
	 * We intercept those #GP and allow access to them anyway
	 * as VMware does.
	 */
	if (enable_vmware_backdoor)
		FUNC17(svm, GP_VECTOR);

	FUNC18(svm, INTERCEPT_INTR);
	FUNC18(svm, INTERCEPT_NMI);
	FUNC18(svm, INTERCEPT_SMI);
	FUNC18(svm, INTERCEPT_SELECTIVE_CR0);
	FUNC18(svm, INTERCEPT_RDPMC);
	FUNC18(svm, INTERCEPT_CPUID);
	FUNC18(svm, INTERCEPT_INVD);
	FUNC18(svm, INTERCEPT_INVLPG);
	FUNC18(svm, INTERCEPT_INVLPGA);
	FUNC18(svm, INTERCEPT_IOIO_PROT);
	FUNC18(svm, INTERCEPT_MSR_PROT);
	FUNC18(svm, INTERCEPT_TASK_SWITCH);
	FUNC18(svm, INTERCEPT_SHUTDOWN);
	FUNC18(svm, INTERCEPT_VMRUN);
	FUNC18(svm, INTERCEPT_VMMCALL);
	FUNC18(svm, INTERCEPT_VMLOAD);
	FUNC18(svm, INTERCEPT_VMSAVE);
	FUNC18(svm, INTERCEPT_STGI);
	FUNC18(svm, INTERCEPT_CLGI);
	FUNC18(svm, INTERCEPT_SKINIT);
	FUNC18(svm, INTERCEPT_WBINVD);
	FUNC18(svm, INTERCEPT_XSETBV);
	FUNC18(svm, INTERCEPT_RDPRU);
	FUNC18(svm, INTERCEPT_RSM);

	if (!FUNC11(svm->vcpu.kvm)) {
		FUNC18(svm, INTERCEPT_MONITOR);
		FUNC18(svm, INTERCEPT_MWAIT);
	}

	if (!FUNC9(svm->vcpu.kvm))
		FUNC18(svm, INTERCEPT_HLT);

	control->iopm_base_pa = FUNC1(iopm_base);
	control->msrpm_base_pa = FUNC1(FUNC0(svm->msrpm));
	control->int_ctl = V_INTR_MASKING_MASK;

	FUNC7(&save->es);
	FUNC7(&save->ss);
	FUNC7(&save->ds);
	FUNC7(&save->fs);
	FUNC7(&save->gs);

	save->cs.selector = 0xf000;
	save->cs.base = 0xffff0000;
	/* Executable/Readable Code Segment */
	save->cs.attrib = SVM_SELECTOR_READ_MASK | SVM_SELECTOR_P_MASK |
		SVM_SELECTOR_S_MASK | SVM_SELECTOR_CODE_MASK;
	save->cs.limit = 0xffff;

	save->gdtr.limit = 0xffff;
	save->idtr.limit = 0xffff;

	FUNC8(&save->ldtr, SEG_TYPE_LDT);
	FUNC8(&save->tr, SEG_TYPE_BUSY_TSS16);

	FUNC21(&svm->vcpu, 0);
	save->dr6 = 0xffff0ff0;
	FUNC12(&svm->vcpu, 2);
	save->rip = 0x0000fff0;
	svm->vcpu.arch.regs[VCPU_REGS_RIP] = save->rip;

	/*
	 * svm_set_cr0() sets PG and WP and clears NW and CD on save->cr0.
	 * It also updates the guest-visible cr0 value.
	 */
	FUNC20(&svm->vcpu, X86_CR0_NW | X86_CR0_CD | X86_CR0_ET);
	FUNC10(&svm->vcpu);

	save->cr4 = X86_CR4_PAE;
	/* rdx = ?? */

	if (npt_enabled) {
		/* Setup VMCB for Nested Paging */
		control->nested_ctl |= SVM_NESTED_CTL_NP_ENABLE;
		FUNC5(svm, INTERCEPT_INVLPG);
		FUNC4(svm, PF_VECTOR);
		FUNC3(svm, INTERCEPT_CR3_READ);
		FUNC3(svm, INTERCEPT_CR3_WRITE);
		save->g_pat = svm->vcpu.arch.pat;
		save->cr3 = 0;
		save->cr4 = 0;
	}
	svm->asid_generation = 0;

	svm->nested.vmcb = 0;
	svm->vcpu.arch.hflags = 0;

	if (pause_filter_count) {
		control->pause_filter_count = pause_filter_count;
		if (pause_filter_thresh)
			control->pause_filter_thresh = pause_filter_thresh;
		FUNC18(svm, INTERCEPT_PAUSE);
	} else {
		FUNC5(svm, INTERCEPT_PAUSE);
	}

	if (FUNC13(&svm->vcpu))
		FUNC2(svm);

	/*
	 * If hardware supports Virtual VMLOAD VMSAVE then enable it
	 * in VMCB and clear intercepts to avoid #VMEXIT.
	 */
	if (vls) {
		FUNC5(svm, INTERCEPT_VMLOAD);
		FUNC5(svm, INTERCEPT_VMSAVE);
		svm->vmcb->control.virt_ext |= VIRTUAL_VMLOAD_VMSAVE_ENABLE_MASK;
	}

	if (vgif) {
		FUNC5(svm, INTERCEPT_STGI);
		FUNC5(svm, INTERCEPT_CLGI);
		svm->vmcb->control.int_ctl |= V_GIF_ENABLE_MASK;
	}

	if (FUNC19(svm->vcpu.kvm)) {
		svm->vmcb->control.nested_ctl |= SVM_NESTED_CTL_SEV_ENABLE;
		FUNC4(svm, UD_VECTOR);
	}

	FUNC14(svm->vmcb);

	FUNC6(svm);

}