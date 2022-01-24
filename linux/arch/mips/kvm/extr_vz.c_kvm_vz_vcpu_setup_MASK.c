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
struct mips_coproc {scalar_t__** reg; } ;
struct TYPE_3__ {int /*<<< orphan*/  pc; struct mips_coproc* cop0; } ;
struct kvm_vcpu {int vcpu_id; TYPE_1__ arch; } ;
typedef  int s32 ;
struct TYPE_4__ {int /*<<< orphan*/  processor_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CONF_CM_CMASK ; 
 int INTCTLF_IPFDC ; 
 int INTCTLF_IPPCI ; 
 int INTCTLF_IPTI ; 
 int MIPSR6_WIRED_LIMIT ; 
 int MIPS_CONF1_C2 ; 
 int MIPS_CONF1_CA ; 
 int MIPS_CONF1_FP ; 
 int MIPS_CONF1_MD ; 
 int MIPS_CONF1_PC ; 
 int MIPS_CONF1_WR ; 
 int MIPS_CONF3_BPG ; 
 int MIPS_CONF3_CDMM ; 
 int MIPS_CONF3_CTXTC ; 
 int MIPS_CONF3_DSP ; 
 int MIPS_CONF3_ISA_OE ; 
 int MIPS_CONF3_ITL ; 
 int MIPS_CONF3_LPA ; 
 int MIPS_CONF3_MSA ; 
 int MIPS_CONF3_MT ; 
 int MIPS_CONF3_SM ; 
 int MIPS_CONF3_SP ; 
 int MIPS_CONF3_TL ; 
 int MIPS_CONF3_ULRI ; 
 int MIPS_CONF3_VEIC ; 
 int MIPS_CONF3_VINT ; 
 int MIPS_CONF5_CV ; 
 int MIPS_CONF5_FRE ; 
 int MIPS_CONF5_K ; 
 int MIPS_CONF5_MRP ; 
 int MIPS_CONF5_MSAEN ; 
 int MIPS_CONF5_SBRI ; 
 int MIPS_CONF5_UFE ; 
 int MIPS_CONF5_UFR ; 
 int /*<<< orphan*/  MIPS_CONF_M ; 
 int /*<<< orphan*/  MIPS_CONF_MT ; 
 size_t MIPS_CP0_GUESTCTL2 ; 
 size_t MIPS_CP0_GUESTCTL2_SEL ; 
 int MIPS_PWSIZE_PTW_SHIFT ; 
 int MIPS_SEGCFG_C_SHIFT ; 
 unsigned long NSEC_PER_SEC ; 
 int PG_IEC ; 
 int PG_RIE ; 
 int PG_XIE ; 
 int ST0_BEV ; 
 int ST0_ERL ; 
 int /*<<< orphan*/  ST0_FR ; 
 int _CACHE_SHIFT ; 
 int _page_cachable_default ; 
 TYPE_2__ boot_cpu_data ; 
 scalar_t__ cpu_guest_has_conf1 ; 
 scalar_t__ cpu_guest_has_conf2 ; 
 scalar_t__ cpu_guest_has_conf3 ; 
 scalar_t__ cpu_guest_has_conf4 ; 
 scalar_t__ cpu_guest_has_conf5 ; 
 scalar_t__ cpu_guest_has_contextconfig ; 
 scalar_t__ cpu_guest_has_htw ; 
 scalar_t__ cpu_guest_has_segments ; 
 scalar_t__ cpu_has_guestctl2 ; 
 scalar_t__ cpu_has_mips_r6 ; 
 int cpu_vmbits ; 
 int /*<<< orphan*/  FUNC1 (struct mips_coproc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mips_coproc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC8 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC9 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC10 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC11 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC12 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC13 (struct mips_coproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mips_coproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mips_coproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct mips_coproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct mips_coproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct mips_coproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC30 (struct mips_coproc*,unsigned long long) ; 
 unsigned long mips_hpt_frequency ; 
 int FUNC31 () ; 
 int FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int FUNC34 () ; 

__attribute__((used)) static int FUNC35(struct kvm_vcpu *vcpu)
{
	struct mips_coproc *cop0 = vcpu->arch.cop0;
	unsigned long count_hz = 100*1000*1000; /* default to 100 MHz */

	/*
	 * Start off the timer at the same frequency as the host timer, but the
	 * soft timer doesn't handle frequencies greater than 1GHz yet.
	 */
	if (mips_hpt_frequency && mips_hpt_frequency <= NSEC_PER_SEC)
		count_hz = mips_hpt_frequency;
	FUNC6(vcpu, count_hz);

	/*
	 * Initialize guest register state to valid architectural reset state.
	 */

	/* PageGrain */
	if (cpu_has_mips_r6)
		FUNC21(cop0, PG_RIE | PG_XIE | PG_IEC);
	/* Wired */
	if (cpu_has_mips_r6)
		FUNC29(cop0,
				       FUNC34() & MIPSR6_WIRED_LIMIT);
	/* Status */
	FUNC28(cop0, ST0_BEV | ST0_ERL);
	if (cpu_has_mips_r6)
		FUNC2(cop0, ST0_FR, FUNC33());
	/* IntCtl */
	FUNC20(cop0, FUNC32() &
				(INTCTLF_IPFDC | INTCTLF_IPPCI | INTCTLF_IPTI));
	/* PRId */
	FUNC22(cop0, boot_cpu_data.processor_id);
	/* EBase */
	FUNC19(cop0, (s32)0x80000000 | vcpu->vcpu_id);
	/* Config */
	FUNC7(cop0);
	/* architecturally writable (e.g. from guest) */
	FUNC1(cop0, CONF_CM_CMASK,
				 _page_cachable_default >> _CACHE_SHIFT);
	/* architecturally read only, but maybe writable from root */
	FUNC1(cop0, MIPS_CONF_MT, FUNC31());
	if (cpu_guest_has_conf1) {
		FUNC13(cop0, MIPS_CONF_M);
		/* Config1 */
		FUNC8(cop0);
		/* architecturally read only, but maybe writable from root */
		FUNC3(cop0, MIPS_CONF1_C2	|
					       MIPS_CONF1_MD	|
					       MIPS_CONF1_PC	|
					       MIPS_CONF1_WR	|
					       MIPS_CONF1_CA	|
					       MIPS_CONF1_FP);
	}
	if (cpu_guest_has_conf2) {
		FUNC14(cop0, MIPS_CONF_M);
		/* Config2 */
		FUNC9(cop0);
	}
	if (cpu_guest_has_conf3) {
		FUNC15(cop0, MIPS_CONF_M);
		/* Config3 */
		FUNC10(cop0);
		/* architecturally writable (e.g. from guest) */
		FUNC4(cop0, MIPS_CONF3_ISA_OE);
		/* architecturally read only, but maybe writable from root */
		FUNC4(cop0, MIPS_CONF3_MSA	|
					       MIPS_CONF3_BPG	|
					       MIPS_CONF3_ULRI	|
					       MIPS_CONF3_DSP	|
					       MIPS_CONF3_CTXTC	|
					       MIPS_CONF3_ITL	|
					       MIPS_CONF3_LPA	|
					       MIPS_CONF3_VEIC	|
					       MIPS_CONF3_VINT	|
					       MIPS_CONF3_SP	|
					       MIPS_CONF3_CDMM	|
					       MIPS_CONF3_MT	|
					       MIPS_CONF3_SM	|
					       MIPS_CONF3_TL);
	}
	if (cpu_guest_has_conf4) {
		FUNC16(cop0, MIPS_CONF_M);
		/* Config4 */
		FUNC11(cop0);
	}
	if (cpu_guest_has_conf5) {
		FUNC17(cop0, MIPS_CONF_M);
		/* Config5 */
		FUNC12(cop0);
		/* architecturally writable (e.g. from guest) */
		FUNC5(cop0, MIPS_CONF5_K	|
					       MIPS_CONF5_CV	|
					       MIPS_CONF5_MSAEN	|
					       MIPS_CONF5_UFE	|
					       MIPS_CONF5_FRE	|
					       MIPS_CONF5_SBRI	|
					       MIPS_CONF5_UFR);
		/* architecturally read only, but maybe writable from root */
		FUNC5(cop0, MIPS_CONF5_MRP);
	}

	if (cpu_guest_has_contextconfig) {
		/* ContextConfig */
		FUNC18(cop0, 0x007ffff0);
#ifdef CONFIG_64BIT
		/* XContextConfig */
		/* bits SEGBITS-13+3:4 set */
		kvm_write_sw_gc0_xcontextconfig(cop0,
					((1ull << (cpu_vmbits - 13)) - 1) << 4);
#endif
	}

	/* Implementation dependent, use the legacy layout */
	if (cpu_guest_has_segments) {
		/* SegCtl0, SegCtl1, SegCtl2 */
		FUNC25(cop0, 0x00200010);
		FUNC26(cop0, 0x00000002 |
				(_page_cachable_default >> _CACHE_SHIFT) <<
						(16 + MIPS_SEGCFG_C_SHIFT));
		FUNC27(cop0, 0x00380438);
	}

	/* reset HTW registers */
	if (cpu_guest_has_htw && cpu_has_mips_r6) {
		/* PWField */
		FUNC23(cop0, 0x0c30c302);
		/* PWSize */
		FUNC24(cop0, 1 << MIPS_PWSIZE_PTW_SHIFT);
	}

	/* start with no pending virtual guest interrupts */
	if (cpu_has_guestctl2)
		cop0->reg[MIPS_CP0_GUESTCTL2][MIPS_CP0_GUESTCTL2_SEL] = 0;

	/* Put PC at reset vector */
	vcpu->arch.pc = FUNC0(0x1fc00000);

	return 0;
}