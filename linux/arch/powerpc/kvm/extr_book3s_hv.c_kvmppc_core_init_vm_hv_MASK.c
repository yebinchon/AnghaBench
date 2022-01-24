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
struct TYPE_3__ {unsigned long lpid; unsigned long host_lpcr; int vrma_slb_v; int radix; int mmu_ready; unsigned long lpcr; int threads_indep; int smt_mode; int emul_smt_mode; int /*<<< orphan*/  debugfs_dir; int /*<<< orphan*/  tlb_sets; int /*<<< orphan*/ * resize_hpt; void* host_lpid; void* host_sdr1; int /*<<< orphan*/  enabled_hcalls; int /*<<< orphan*/  need_tlb_flush; int /*<<< orphan*/  mmu_setup_lock; } ;
struct kvm {TYPE_1__ arch; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_ARCH_207S ; 
 int /*<<< orphan*/  CPU_FTR_ARCH_300 ; 
 int /*<<< orphan*/  CPU_FTR_HVMODE ; 
 int ENOMEM ; 
 unsigned long LPCR_DPFD_SH ; 
 unsigned long LPCR_GTSE ; 
 unsigned long LPCR_HDICE ; 
 unsigned long LPCR_HEIC ; 
 unsigned long LPCR_HR ; 
 unsigned long LPCR_HVICE ; 
 unsigned long LPCR_LPES ; 
 unsigned long LPCR_ONL ; 
 unsigned long LPCR_PECE ; 
 unsigned long LPCR_UPRT ; 
 unsigned long LPCR_VPM0 ; 
 unsigned long LPCR_VPM1 ; 
 int /*<<< orphan*/  POWER7_TLB_SETS ; 
 int /*<<< orphan*/  POWER8_TLB_SETS ; 
 int /*<<< orphan*/  POWER9_TLB_SETS_HASH ; 
 int /*<<< orphan*/  POWER9_TLB_SETS_RADIX ; 
 int SLB_VSID_B_1T ; 
 int SLB_VSID_SHIFT_1T ; 
 int /*<<< orphan*/  SPRN_LPCR ; 
 int /*<<< orphan*/  SPRN_LPID ; 
 int /*<<< orphan*/  SPRN_SDR1 ; 
 int VRMA_VSID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_enabled_hcalls ; 
 int indep_threads_mode ; 
 int /*<<< orphan*/  kvm_debugfs_dir ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 unsigned long FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int FUNC9 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 scalar_t__ FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,int) ; 
 int threads_per_subcore ; 
 scalar_t__ FUNC18 () ; 

__attribute__((used)) static int FUNC19(struct kvm *kvm)
{
	unsigned long lpcr, lpid;
	char buf[32];
	int ret;

	FUNC14(&kvm->arch.mmu_setup_lock);

	/* Allocate the guest's logical partition ID */

	lpid = FUNC7();
	if ((long)lpid < 0)
		return -ENOMEM;
	kvm->arch.lpid = lpid;

	FUNC6();

	FUNC5(kvm);

	/*
	 * Since we don't flush the TLB when tearing down a VM,
	 * and this lpid might have previously been used,
	 * make sure we flush on each core before running the new VM.
	 * On POWER9, the tlbie in mmu_partition_table_set_entry()
	 * does this flush for us.
	 */
	if (!FUNC0(CPU_FTR_ARCH_300))
		FUNC1(&kvm->arch.need_tlb_flush);

	/* Start out with the default set of hcalls enabled */
	FUNC12(kvm->arch.enabled_hcalls, default_enabled_hcalls,
	       sizeof(kvm->arch.enabled_hcalls));

	if (!FUNC0(CPU_FTR_ARCH_300))
		kvm->arch.host_sdr1 = FUNC13(SPRN_SDR1);

	/* Init LPCR for virtual RMA mode */
	if (FUNC0(CPU_FTR_HVMODE)) {
		kvm->arch.host_lpid = FUNC13(SPRN_LPID);
		kvm->arch.host_lpcr = lpcr = FUNC13(SPRN_LPCR);
		lpcr &= LPCR_PECE | LPCR_LPES;
	} else {
		lpcr = 0;
	}
	lpcr |= (4UL << LPCR_DPFD_SH) | LPCR_HDICE |
		LPCR_VPM0 | LPCR_VPM1;
	kvm->arch.vrma_slb_v = SLB_VSID_B_1T |
		(VRMA_VSID << SLB_VSID_SHIFT_1T);
	/* On POWER8 turn on online bit to enable PURR/SPURR */
	if (FUNC0(CPU_FTR_ARCH_207S))
		lpcr |= LPCR_ONL;
	/*
	 * On POWER9, VPM0 bit is reserved (VPM0=1 behaviour is assumed)
	 * Set HVICE bit to enable hypervisor virtualization interrupts.
	 * Set HEIC to prevent OS interrupts to go to hypervisor (should
	 * be unnecessary but better safe than sorry in case we re-enable
	 * EE in HV mode with this LPCR still set)
	 */
	if (FUNC0(CPU_FTR_ARCH_300)) {
		lpcr &= ~LPCR_VPM0;
		lpcr |= LPCR_HVICE | LPCR_HEIC;

		/*
		 * If xive is enabled, we route 0x500 interrupts directly
		 * to the guest.
		 */
		if (FUNC18())
			lpcr |= LPCR_LPES;
	}

	/*
	 * If the host uses radix, the guest starts out as radix.
	 */
	if (FUNC16()) {
		kvm->arch.radix = 1;
		kvm->arch.mmu_ready = 1;
		lpcr &= ~LPCR_VPM1;
		lpcr |= LPCR_UPRT | LPCR_GTSE | LPCR_HR;
		ret = FUNC9(kvm);
		if (ret) {
			FUNC8(kvm->arch.lpid);
			return ret;
		}
		FUNC11(kvm);
	}

	kvm->arch.lpcr = lpcr;

	/* Initialization for future HPT resizes */
	kvm->arch.resize_hpt = NULL;

	/*
	 * Work out how many sets the TLB has, for the use of
	 * the TLB invalidation loop in book3s_hv_rmhandlers.S.
	 */
	if (FUNC16())
		kvm->arch.tlb_sets = POWER9_TLB_SETS_RADIX;	/* 128 */
	else if (FUNC0(CPU_FTR_ARCH_300))
		kvm->arch.tlb_sets = POWER9_TLB_SETS_HASH;	/* 256 */
	else if (FUNC0(CPU_FTR_ARCH_207S))
		kvm->arch.tlb_sets = POWER8_TLB_SETS;		/* 512 */
	else
		kvm->arch.tlb_sets = POWER7_TLB_SETS;		/* 128 */

	/*
	 * Track that we now have a HV mode VM active. This blocks secondary
	 * CPU threads from coming online.
	 * On POWER9, we only need to do this if the "indep_threads_mode"
	 * module parameter has been set to N.
	 */
	if (FUNC0(CPU_FTR_ARCH_300)) {
		if (!indep_threads_mode && !FUNC0(CPU_FTR_HVMODE)) {
			FUNC15("KVM: Ignoring indep_threads_mode=N in nested hypervisor\n");
			kvm->arch.threads_indep = true;
		} else {
			kvm->arch.threads_indep = indep_threads_mode;
		}
	}
	if (!kvm->arch.threads_indep)
		FUNC3();

	/*
	 * Initialize smt_mode depending on processor.
	 * POWER8 and earlier have to use "strict" threading, where
	 * all vCPUs in a vcore have to run on the same (sub)core,
	 * whereas on POWER9 the threads can each run a different
	 * guest.
	 */
	if (!FUNC0(CPU_FTR_ARCH_300))
		kvm->arch.smt_mode = threads_per_subcore;
	else
		kvm->arch.smt_mode = 1;
	kvm->arch.emul_smt_mode = 1;

	/*
	 * Create a debugfs directory for the VM
	 */
	FUNC17(buf, sizeof(buf), "vm%d", current->pid);
	kvm->arch.debugfs_dir = FUNC2(buf, kvm_debugfs_dir);
	FUNC10(kvm);
	if (FUNC16())
		FUNC4(kvm);

	return 0;
}