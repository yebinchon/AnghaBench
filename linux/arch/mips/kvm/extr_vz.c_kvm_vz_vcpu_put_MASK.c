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
struct TYPE_3__ {struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPSR6_WIRED_WIRED ; 
 int MIPS_CONF3_PW ; 
 size_t MIPS_CP0_GUESTCTL2 ; 
 size_t MIPS_CP0_GUESTCTL2_SEL ; 
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
 scalar_t__ cpu_guest_has_segments ; 
 scalar_t__ cpu_guest_has_userlocal ; 
 scalar_t__ cpu_has_guestctl2 ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int FUNC3 (struct mips_coproc*) ; 
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
 int /*<<< orphan*/  FUNC44 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC45 () ; 
 int /*<<< orphan*/  FUNC46 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC47 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC48 (struct mips_coproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC49 () ; 

__attribute__((used)) static int FUNC50(struct kvm_vcpu *vcpu, int cpu)
{
	struct mips_coproc *cop0 = vcpu->arch.cop0;

	if (current->flags & PF_VCPU)
		FUNC47(vcpu);

	FUNC2(vcpu);

	FUNC23(cop0);
	FUNC18(cop0);
	FUNC19(cop0);
	FUNC15(cop0);
	if (cpu_guest_has_contextconfig)
		FUNC16(cop0);
#ifdef CONFIG_64BIT
	kvm_save_gc0_xcontext(cop0);
	if (cpu_guest_has_contextconfig)
		kvm_save_gc0_xcontextconfig(cop0);
#endif
	FUNC32(cop0);
	FUNC31(cop0);
	FUNC42(cop0);
	/* allow wired TLB entries to be overwritten */
	FUNC0(MIPSR6_WIRED_WIRED);
	FUNC22(cop0);
	FUNC6(cop0);
	FUNC17(cop0);
	FUNC40(cop0);
	FUNC24(cop0);
	FUNC20(cop0);
	FUNC48(cop0, FUNC45());
	if (cpu_guest_has_userlocal)
		FUNC41(cop0);

	/* only save implemented config registers */
	FUNC7(cop0);
	if (cpu_guest_has_conf1)
		FUNC8(cop0);
	if (cpu_guest_has_conf2)
		FUNC9(cop0);
	if (cpu_guest_has_conf3)
		FUNC10(cop0);
	if (cpu_guest_has_conf4)
		FUNC11(cop0);
	if (cpu_guest_has_conf5)
		FUNC12(cop0);
	if (cpu_guest_has_conf6)
		FUNC13(cop0);
	if (cpu_guest_has_conf7)
		FUNC14(cop0);

	FUNC21(cop0);

	/* save KScratch registers if enabled in guest */
	if (cpu_guest_has_conf4) {
		if (FUNC1(2))
			FUNC25(cop0);
		if (FUNC1(3))
			FUNC26(cop0);
		if (FUNC1(4))
			FUNC27(cop0);
		if (FUNC1(5))
			FUNC28(cop0);
		if (FUNC1(6))
			FUNC29(cop0);
		if (FUNC1(7))
			FUNC30(cop0);
	}

	if (cpu_guest_has_badinstr)
		FUNC4(cop0);
	if (cpu_guest_has_badinstrp)
		FUNC5(cop0);

	if (cpu_guest_has_segments) {
		FUNC37(cop0);
		FUNC38(cop0);
		FUNC39(cop0);
	}

	/* save HTW registers if enabled in guest */
	if (cpu_guest_has_htw &&
	    FUNC3(cop0) & MIPS_CONF3_PW) {
		FUNC33(cop0);
		FUNC35(cop0);
		FUNC36(cop0);
		FUNC34(cop0);
	}

	FUNC46(vcpu);

	/* save Root.GuestCtl2 in unused Guest guestctl2 register */
	if (cpu_has_guestctl2)
		cop0->reg[MIPS_CP0_GUESTCTL2][MIPS_CP0_GUESTCTL2_SEL] =
			FUNC49();

	return 0;
}