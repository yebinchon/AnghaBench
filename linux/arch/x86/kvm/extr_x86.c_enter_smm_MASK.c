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
typedef  int u32 ;
struct TYPE_3__ {int smbase; int cr0; int /*<<< orphan*/  hflags; } ;
struct kvm_vcpu {TYPE_1__ arch; int /*<<< orphan*/  vcpu_id; } ;
struct kvm_segment {int selector; int base; int limit; int type; int s; int g; int present; scalar_t__ padding; scalar_t__ unusable; scalar_t__ avl; scalar_t__ l; scalar_t__ db; scalar_t__ dpl; } ;
struct desc_ptr {scalar_t__ size; scalar_t__ address; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int /*<<< orphan*/  (* set_efer ) (struct kvm_vcpu*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_idt ) (struct kvm_vcpu*,struct desc_ptr*) ;int /*<<< orphan*/  (* set_cr4 ) (struct kvm_vcpu*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_cr0 ) (struct kvm_vcpu*,int) ;int /*<<< orphan*/  (* set_nmi_mask ) (struct kvm_vcpu*,int) ;scalar_t__ (* get_nmi_mask ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* pre_enter_smm ) (struct kvm_vcpu*,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DR7_FIXED_1 ; 
 int /*<<< orphan*/  HF_SMM_INSIDE_NMI_MASK ; 
 int /*<<< orphan*/  HF_SMM_MASK ; 
 int /*<<< orphan*/  VCPU_SREG_CS ; 
 int /*<<< orphan*/  VCPU_SREG_DS ; 
 int /*<<< orphan*/  VCPU_SREG_ES ; 
 int /*<<< orphan*/  VCPU_SREG_FS ; 
 int /*<<< orphan*/  VCPU_SREG_GS ; 
 int /*<<< orphan*/  VCPU_SREG_SS ; 
 int X86_CR0_EM ; 
 int X86_CR0_PE ; 
 int X86_CR0_PG ; 
 int X86_CR0_TS ; 
 int /*<<< orphan*/  X86_EFLAGS_FIXED ; 
 int /*<<< orphan*/  X86_FEATURE_LM ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,char*) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,struct kvm_segment*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*,int,char*,int) ; 
 TYPE_2__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*,char*) ; 
 scalar_t__ FUNC12 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct kvm_vcpu*,struct desc_ptr*) ; 
 int /*<<< orphan*/  FUNC17 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC19(struct kvm_vcpu *vcpu)
{
	struct kvm_segment cs, ds;
	struct desc_ptr dt;
	char buf[512];
	u32 cr0;

	FUNC18(vcpu->vcpu_id, vcpu->arch.smbase, true);
	FUNC10(buf, 0, 512);
#ifdef CONFIG_X86_64
	if (guest_cpuid_has(vcpu, X86_FEATURE_LM))
		enter_smm_save_state_64(vcpu, buf);
	else
#endif
		FUNC1(vcpu, buf);

	/*
	 * Give pre_enter_smm() a chance to make ISA-specific changes to the
	 * vCPU state (e.g. leave guest mode) after we've saved the state into
	 * the SMM state-save area.
	 */
	kvm_x86_ops->pre_enter_smm(vcpu, buf);

	vcpu->arch.hflags |= HF_SMM_MASK;
	FUNC9(vcpu, vcpu->arch.smbase + 0xfe00, buf, sizeof(buf));

	if (kvm_x86_ops->get_nmi_mask(vcpu))
		vcpu->arch.hflags |= HF_SMM_INSIDE_NMI_MASK;
	else
		kvm_x86_ops->set_nmi_mask(vcpu, true);

	FUNC6(vcpu, X86_EFLAGS_FIXED);
	FUNC5(vcpu, 0x8000);

	cr0 = vcpu->arch.cr0 & ~(X86_CR0_PE | X86_CR0_EM | X86_CR0_TS | X86_CR0_PG);
	kvm_x86_ops->set_cr0(vcpu, cr0);
	vcpu->arch.cr0 = cr0;

	kvm_x86_ops->set_cr4(vcpu, 0);

	/* Undocumented: IDT limit is set to zero on entry to SMM.  */
	dt.address = dt.size = 0;
	kvm_x86_ops->set_idt(vcpu, &dt);

	FUNC0(vcpu, 7, DR7_FIXED_1);

	cs.selector = (vcpu->arch.smbase >> 4) & 0xffff;
	cs.base = vcpu->arch.smbase;

	ds.selector = 0;
	ds.base = 0;

	cs.limit    = ds.limit = 0xffffffff;
	cs.type     = ds.type = 0x3;
	cs.dpl      = ds.dpl = 0;
	cs.db       = ds.db = 0;
	cs.s        = ds.s = 1;
	cs.l        = ds.l = 0;
	cs.g        = ds.g = 1;
	cs.avl      = ds.avl = 0;
	cs.present  = ds.present = 1;
	cs.unusable = ds.unusable = 0;
	cs.padding  = ds.padding = 0;

	FUNC7(vcpu, &cs, VCPU_SREG_CS);
	FUNC7(vcpu, &ds, VCPU_SREG_DS);
	FUNC7(vcpu, &ds, VCPU_SREG_ES);
	FUNC7(vcpu, &ds, VCPU_SREG_FS);
	FUNC7(vcpu, &ds, VCPU_SREG_GS);
	FUNC7(vcpu, &ds, VCPU_SREG_SS);

#ifdef CONFIG_X86_64
	if (guest_cpuid_has(vcpu, X86_FEATURE_LM))
		kvm_x86_ops->set_efer(vcpu, 0);
#endif

	FUNC8(vcpu);
	FUNC4(vcpu);
}