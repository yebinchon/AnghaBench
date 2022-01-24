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
typedef  int u32 ;
struct mips_coproc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pc; struct mips_coproc* cop0; } ;
struct kvm_vcpu {int vcpu_id; TYPE_1__ arch; } ;

/* Variables and functions */
 int CONF_BE ; 
 int CONF_CM_CACHABLE_NONCOHERENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int KVM_GUEST_KSEG0 ; 
 int KVM_MIPS_GUEST_TLB_SIZE ; 
 int MIPS_CONF1_C2 ; 
 int MIPS_CONF1_CA ; 
 int MIPS_CONF1_DL ; 
 int MIPS_CONF1_DL_SHF ; 
 int MIPS_CONF1_MD ; 
 int MIPS_CONF1_PC ; 
 int MIPS_CONF1_WR ; 
 int MIPS_CONF3_ULRI ; 
 int MIPS_CONF7_WII ; 
 int MIPS_CONF_AR ; 
 int MIPS_CONF_M ; 
 int MIPS_CONF_MT_TLB ; 
 int MIPS_CONF_VI ; 
 int MIPS_EBASE_CPUNUM ; 
 int ST0_BEV ; 
 int ST0_ERL ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ cpu_has_vtag_icache ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mips_coproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mips_coproc*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct mips_coproc*,int) ; 
 int FUNC15 () ; 
 int FUNC16 () ; 

__attribute__((used)) static int FUNC17(struct kvm_vcpu *vcpu)
{
	struct mips_coproc *cop0 = vcpu->arch.cop0;
	u32 config, config1;
	int vcpu_id = vcpu->vcpu_id;

	/* Start off the timer at 100 MHz */
	FUNC3(vcpu, 100*1000*1000);

	/*
	 * Arch specific stuff, set up config registers properly so that the
	 * guest will come up as expected
	 */
#ifndef CONFIG_CPU_MIPSR6
	/* r2-r5, simulate a MIPS 24kc */
	FUNC13(cop0, 0x00019300);
#else
	/* r6+, simulate a generic QEMU machine */
	kvm_write_c0_guest_prid(cop0, 0x00010000);
#endif
	/*
	 * Have config1, Cacheable, noncoherent, write-back, write allocate.
	 * Endianness, arch revision & virtually tagged icache should match
	 * host.
	 */
	config = FUNC15() & MIPS_CONF_AR;
	config |= MIPS_CONF_M | CONF_CM_CACHABLE_NONCOHERENT | MIPS_CONF_MT_TLB;
#ifdef CONFIG_CPU_BIG_ENDIAN
	config |= CONF_BE;
#endif
	if (cpu_has_vtag_icache)
		config |= MIPS_CONF_VI;
	FUNC4(cop0, config);

	/* Read the cache characteristics from the host Config1 Register */
	config1 = (FUNC16() & ~0x7f);

	/* DCache line size not correctly reported in Config1 on Octeon CPUs */
	if (FUNC1()) {
		config1 &= ~MIPS_CONF1_DL;
		config1 |= ((FUNC2(FUNC1()) - 1) <<
			    MIPS_CONF1_DL_SHF) & MIPS_CONF1_DL;
	}

	/* Set up MMU size */
	config1 &= ~(0x3f << 25);
	config1 |= ((KVM_MIPS_GUEST_TLB_SIZE - 1) << 25);

	/* We unset some bits that we aren't emulating */
	config1 &= ~(MIPS_CONF1_C2 | MIPS_CONF1_MD | MIPS_CONF1_PC |
		     MIPS_CONF1_WR | MIPS_CONF1_CA);
	FUNC5(cop0, config1);

	/* Have config3, no tertiary/secondary caches implemented */
	FUNC6(cop0, MIPS_CONF_M);
	/* MIPS_CONF_M | (read_c0_config2() & 0xfff) */

	/* Have config4, UserLocal */
	FUNC7(cop0, MIPS_CONF_M | MIPS_CONF3_ULRI);

	/* Have config5 */
	FUNC8(cop0, MIPS_CONF_M);

	/* No config6 */
	FUNC9(cop0, 0);

	/* Set Wait IE/IXMT Ignore in Config7, IAR, AR */
	FUNC10(cop0, (MIPS_CONF7_WII) | (1 << 10));

	/* Status */
	FUNC14(cop0, ST0_BEV | ST0_ERL);

	/*
	 * Setup IntCtl defaults, compatibility mode for timer interrupts (HW5)
	 */
	FUNC12(cop0, 0xFC000000);

	/* Put in vcpu id as CPUNum into Ebase Reg to handle SMP Guests */
	FUNC11(cop0, KVM_GUEST_KSEG0 |
				       (vcpu_id & MIPS_EBASE_CPUNUM));

	/* Put PC at guest reset vector */
	vcpu->arch.pc = FUNC0(0x1fc00000);

	return 0;
}