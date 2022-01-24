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
struct mips_coproc {int /*<<< orphan*/ ** reg; } ;
struct TYPE_3__ {int last_sched_cpu; struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 size_t MIPS_CP0_GUESTCTL2 ; 
 size_t MIPS_CP0_GUESTCTL2_SEL ; 
 int /*<<< orphan*/  MIPS_GCTL0_MC ; 
 int PF_VCPU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ cpu_guest_has_badinstr ; 
 scalar_t__ cpu_guest_has_badinstrp ; 
 scalar_t__ cpu_guest_has_conf1 ; 
 scalar_t__ cpu_guest_has_conf2 ; 
 scalar_t__ cpu_guest_has_conf3 ; 
 scalar_t__ cpu_guest_has_conf4 ; 
 scalar_t__ cpu_guest_has_conf5 ; 
 scalar_t__ cpu_guest_has_conf6 ; 
 scalar_t__ cpu_guest_has_conf7 ; 
 scalar_t__ cpu_guest_has_contextconfig ; 
 scalar_t__ cpu_guest_has_htw ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ cpu_guest_has_rw_llb ; 
 scalar_t__ cpu_guest_has_segments ; 
 scalar_t__ cpu_guest_has_userlocal ; 
 scalar_t__ cpu_has_guestctl2 ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC5 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC6 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC7 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC8 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC9 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC10 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC11 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC12 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC13 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC14 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC15 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC16 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC17 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC18 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC19 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC20 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC21 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC22 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC23 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC24 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC25 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC26 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC27 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC28 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC29 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC30 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC31 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC32 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC33 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC34 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC35 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC36 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC37 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC38 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC39 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC40 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC41 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC42 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC43 (struct mips_coproc*) ; 
 scalar_t__ kvm_trace_guest_mode_change ; 
 int /*<<< orphan*/  FUNC44 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC45 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC46 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ ) ; 
 struct kvm_vcpu** last_vcpu ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC49 () ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC52(struct kvm_vcpu *vcpu, int cpu)
{
	struct mips_coproc *cop0 = vcpu->arch.cop0;
	bool migrated, all;

	/*
	 * Have we migrated to a different CPU?
	 * If so, any old guest TLB state may be stale.
	 */
	migrated = (vcpu->arch.last_sched_cpu != cpu);

	/*
	 * Was this the last VCPU to run on this CPU?
	 * If not, any old guest state from this VCPU will have been clobbered.
	 */
	all = migrated || (last_vcpu[cpu] != vcpu);
	last_vcpu[cpu] = vcpu;

	/*
	 * Restore CP0_Wired unconditionally as we clear it after use, and
	 * restore wired guest TLB entries (while in guest context).
	 */
	FUNC41(cop0);
	if (current->flags & PF_VCPU) {
		FUNC49();
		FUNC45(vcpu, cpu);
		FUNC46(vcpu);
	}

	/*
	 * Restore timer state regardless, as e.g. Cause.TI can change over time
	 * if left unmaintained.
	 */
	FUNC44(vcpu);

	/* Set MC bit if we want to trace guest mode changes */
	if (kvm_trace_guest_mode_change)
		FUNC48(MIPS_GCTL0_MC);
	else
		FUNC0(MIPS_GCTL0_MC);

	/* Don't bother restoring registers multiple times unless necessary */
	if (!all)
		return 0;

	/*
	 * Restore config registers first, as some implementations restrict
	 * writes to other registers when the corresponding feature bits aren't
	 * set. For example Status.CU1 cannot be set unless Config1.FP is set.
	 */
	FUNC6(cop0);
	if (cpu_guest_has_conf1)
		FUNC7(cop0);
	if (cpu_guest_has_conf2)
		FUNC8(cop0);
	if (cpu_guest_has_conf3)
		FUNC9(cop0);
	if (cpu_guest_has_conf4)
		FUNC10(cop0);
	if (cpu_guest_has_conf5)
		FUNC11(cop0);
	if (cpu_guest_has_conf6)
		FUNC12(cop0);
	if (cpu_guest_has_conf7)
		FUNC13(cop0);

	FUNC22(cop0);
	FUNC17(cop0);
	FUNC18(cop0);
	FUNC14(cop0);
	if (cpu_guest_has_contextconfig)
		FUNC15(cop0);
#ifdef CONFIG_64BIT
	kvm_restore_gc0_xcontext(cop0);
	if (cpu_guest_has_contextconfig)
		kvm_restore_gc0_xcontextconfig(cop0);
#endif
	FUNC31(cop0);
	FUNC30(cop0);
	FUNC21(cop0);
	FUNC5(cop0);
	FUNC16(cop0);
	FUNC39(cop0);
	FUNC23(cop0);
	FUNC19(cop0);
	FUNC47(FUNC2(cop0));
	if (cpu_guest_has_userlocal)
		FUNC40(cop0);

	FUNC20(cop0);

	/* restore KScratch registers if enabled in guest */
	if (cpu_guest_has_conf4) {
		if (FUNC1(2))
			FUNC24(cop0);
		if (FUNC1(3))
			FUNC25(cop0);
		if (FUNC1(4))
			FUNC26(cop0);
		if (FUNC1(5))
			FUNC27(cop0);
		if (FUNC1(6))
			FUNC28(cop0);
		if (FUNC1(7))
			FUNC29(cop0);
	}

	if (cpu_guest_has_badinstr)
		FUNC3(cop0);
	if (cpu_guest_has_badinstrp)
		FUNC4(cop0);

	if (cpu_guest_has_segments) {
		FUNC36(cop0);
		FUNC37(cop0);
		FUNC38(cop0);
	}

	/* restore HTW registers */
	if (cpu_guest_has_htw) {
		FUNC32(cop0);
		FUNC34(cop0);
		FUNC35(cop0);
		FUNC33(cop0);
	}

	/* restore Root.GuestCtl2 from unused Guest guestctl2 register */
	if (cpu_has_guestctl2)
		FUNC50(
			cop0->reg[MIPS_CP0_GUESTCTL2][MIPS_CP0_GUESTCTL2_SEL]);

	/*
	 * We should clear linked load bit to break interrupted atomics. This
	 * prevents a SC on the next VCPU from succeeding by matching a LL on
	 * the previous VCPU.
	 */
	if (cpu_guest_has_rw_llb)
		FUNC51(0);

	return 0;
}