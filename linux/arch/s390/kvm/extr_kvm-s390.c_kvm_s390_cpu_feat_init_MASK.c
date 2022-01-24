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
typedef  int /*<<< orphan*/  cpacf_mask_t ;
struct TYPE_4__ {int* plo; int /*<<< orphan*/  dfltcc; int /*<<< orphan*/  sortl; scalar_t__ kdsa; scalar_t__ kma; scalar_t__ ppno; scalar_t__ pcc; scalar_t__ kmo; scalar_t__ kmf; scalar_t__ kmctr; scalar_t__ pckmo; scalar_t__ klmd; scalar_t__ kimd; scalar_t__ km; scalar_t__ kmc; scalar_t__ kmac; int /*<<< orphan*/  ptff; } ;
struct TYPE_3__ {scalar_t__ has_kss; scalar_t__ has_ibs; scalar_t__ has_cei; scalar_t__ has_ib; scalar_t__ has_gsls; scalar_t__ has_gpere; scalar_t__ has_siif; scalar_t__ has_64bscao; int /*<<< orphan*/  has_sief2; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPACF_KDSA ; 
 int /*<<< orphan*/  CPACF_KIMD ; 
 int /*<<< orphan*/  CPACF_KLMD ; 
 int /*<<< orphan*/  CPACF_KM ; 
 int /*<<< orphan*/  CPACF_KMA ; 
 int /*<<< orphan*/  CPACF_KMAC ; 
 int /*<<< orphan*/  CPACF_KMC ; 
 int /*<<< orphan*/  CPACF_KMCTR ; 
 int /*<<< orphan*/  CPACF_KMF ; 
 int /*<<< orphan*/  CPACF_KMO ; 
 int /*<<< orphan*/  CPACF_PCC ; 
 int /*<<< orphan*/  CPACF_PCKMO ; 
 int /*<<< orphan*/  CPACF_PRNO ; 
 int /*<<< orphan*/  INSN_DFLTCC ; 
 int /*<<< orphan*/  INSN_SORTL ; 
 int /*<<< orphan*/  KVM_S390_VM_CPU_FEAT_64BSCAO ; 
 int /*<<< orphan*/  KVM_S390_VM_CPU_FEAT_CEI ; 
 int /*<<< orphan*/  KVM_S390_VM_CPU_FEAT_ESOP ; 
 int /*<<< orphan*/  KVM_S390_VM_CPU_FEAT_GPERE ; 
 int /*<<< orphan*/  KVM_S390_VM_CPU_FEAT_GSLS ; 
 int /*<<< orphan*/  KVM_S390_VM_CPU_FEAT_IB ; 
 int /*<<< orphan*/  KVM_S390_VM_CPU_FEAT_IBS ; 
 int /*<<< orphan*/  KVM_S390_VM_CPU_FEAT_KSS ; 
 int /*<<< orphan*/  KVM_S390_VM_CPU_FEAT_SIEF2 ; 
 int /*<<< orphan*/  KVM_S390_VM_CPU_FEAT_SIIF ; 
 scalar_t__ MACHINE_HAS_ESOP ; 
 int /*<<< orphan*/  PTFF_QAF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__ kvm_s390_available_subfunc ; 
 int /*<<< orphan*/  nested ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ sclp ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(void)
{
	int i;

	for (i = 0; i < 256; ++i) {
		if (FUNC3(i))
			kvm_s390_available_subfunc.plo[i >> 3] |= 0x80 >> (i & 7);
	}

	if (FUNC5(28)) /* TOD-clock steering */
		FUNC4(kvm_s390_available_subfunc.ptff,
		     sizeof(kvm_s390_available_subfunc.ptff),
		     PTFF_QAF);

	if (FUNC5(17)) { /* MSA */
		FUNC0(CPACF_KMAC, (cpacf_mask_t *)
			      kvm_s390_available_subfunc.kmac);
		FUNC0(CPACF_KMC, (cpacf_mask_t *)
			      kvm_s390_available_subfunc.kmc);
		FUNC0(CPACF_KM, (cpacf_mask_t *)
			      kvm_s390_available_subfunc.km);
		FUNC0(CPACF_KIMD, (cpacf_mask_t *)
			      kvm_s390_available_subfunc.kimd);
		FUNC0(CPACF_KLMD, (cpacf_mask_t *)
			      kvm_s390_available_subfunc.klmd);
	}
	if (FUNC5(76)) /* MSA3 */
		FUNC0(CPACF_PCKMO, (cpacf_mask_t *)
			      kvm_s390_available_subfunc.pckmo);
	if (FUNC5(77)) { /* MSA4 */
		FUNC0(CPACF_KMCTR, (cpacf_mask_t *)
			      kvm_s390_available_subfunc.kmctr);
		FUNC0(CPACF_KMF, (cpacf_mask_t *)
			      kvm_s390_available_subfunc.kmf);
		FUNC0(CPACF_KMO, (cpacf_mask_t *)
			      kvm_s390_available_subfunc.kmo);
		FUNC0(CPACF_PCC, (cpacf_mask_t *)
			      kvm_s390_available_subfunc.pcc);
	}
	if (FUNC5(57)) /* MSA5 */
		FUNC0(CPACF_PRNO, (cpacf_mask_t *)
			      kvm_s390_available_subfunc.ppno);

	if (FUNC5(146)) /* MSA8 */
		FUNC0(CPACF_KMA, (cpacf_mask_t *)
			      kvm_s390_available_subfunc.kma);

	if (FUNC5(155)) /* MSA9 */
		FUNC0(CPACF_KDSA, (cpacf_mask_t *)
			      kvm_s390_available_subfunc.kdsa);

	if (FUNC5(150)) /* SORTL */
		FUNC1(INSN_SORTL, kvm_s390_available_subfunc.sortl);

	if (FUNC5(151)) /* DFLTCC */
		FUNC1(INSN_DFLTCC, kvm_s390_available_subfunc.dfltcc);

	if (MACHINE_HAS_ESOP)
		FUNC2(KVM_S390_VM_CPU_FEAT_ESOP);
	/*
	 * We need SIE support, ESOP (PROT_READ protection for gmap_shadow),
	 * 64bit SCAO (SCA passthrough) and IDTE (for gmap_shadow unshadowing).
	 */
	if (!sclp.has_sief2 || !MACHINE_HAS_ESOP || !sclp.has_64bscao ||
	    !FUNC5(3) || !nested)
		return;
	FUNC2(KVM_S390_VM_CPU_FEAT_SIEF2);
	if (sclp.has_64bscao)
		FUNC2(KVM_S390_VM_CPU_FEAT_64BSCAO);
	if (sclp.has_siif)
		FUNC2(KVM_S390_VM_CPU_FEAT_SIIF);
	if (sclp.has_gpere)
		FUNC2(KVM_S390_VM_CPU_FEAT_GPERE);
	if (sclp.has_gsls)
		FUNC2(KVM_S390_VM_CPU_FEAT_GSLS);
	if (sclp.has_ib)
		FUNC2(KVM_S390_VM_CPU_FEAT_IB);
	if (sclp.has_cei)
		FUNC2(KVM_S390_VM_CPU_FEAT_CEI);
	if (sclp.has_ibs)
		FUNC2(KVM_S390_VM_CPU_FEAT_IBS);
	if (sclp.has_kss)
		FUNC2(KVM_S390_VM_CPU_FEAT_KSS);
	/*
	 * KVM_S390_VM_CPU_FEAT_SKEY: Wrong shadow of PTE.I bits will make
	 * all skey handling functions read/set the skey from the PGSTE
	 * instead of the real storage key.
	 *
	 * KVM_S390_VM_CPU_FEAT_CMMA: Wrong shadow of PTE.I bits will make
	 * pages being detected as preserved although they are resident.
	 *
	 * KVM_S390_VM_CPU_FEAT_PFMFI: Wrong shadow of PTE.I bits will
	 * have the same effect as for KVM_S390_VM_CPU_FEAT_SKEY.
	 *
	 * For KVM_S390_VM_CPU_FEAT_SKEY, KVM_S390_VM_CPU_FEAT_CMMA and
	 * KVM_S390_VM_CPU_FEAT_PFMFI, all PTE.I and PGSTE bits have to be
	 * correctly shadowed. We can do that for the PGSTE but not for PTE.I.
	 *
	 * KVM_S390_VM_CPU_FEAT_SIGPIF: Wrong SCB addresses in the SCA. We
	 * cannot easily shadow the SCA because of the ipte lock.
	 */
}