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
struct kvmppc_vcore {scalar_t__ first_vcpuid; int /*<<< orphan*/  lock; int /*<<< orphan*/  num_threads; } ;
struct TYPE_4__ {int shared_big_endian; int intr_msr; int hfscr; int thread_cpu; int prev_cpu; int /*<<< orphan*/  cpu_type; scalar_t__ ptid; struct kvmppc_vcore* vcore; int /*<<< orphan*/  cpu_run; int /*<<< orphan*/  state; int /*<<< orphan*/  busy_preempt; int /*<<< orphan*/  tbacct_lock; int /*<<< orphan*/  vpa_update_lock; int /*<<< orphan*/  ctrl; int /*<<< orphan*/ * mmcr; int /*<<< orphan*/  shregs; int /*<<< orphan*/ * shared; } ;
struct kvm_vcpu {TYPE_2__ arch; scalar_t__ vcpu_id; } ;
struct TYPE_3__ {unsigned int emul_smt_mode; int smt_mode; int /*<<< orphan*/  mmu_setup_lock; int /*<<< orphan*/  online_vcores; struct kvmppc_vcore** vcores; } ;
struct kvm {int /*<<< orphan*/  lock; TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CPU_FTR_ARCH_300 ; 
 int /*<<< orphan*/  CPU_FTR_HVMODE ; 
 int /*<<< orphan*/  CPU_FTR_P9_TM_HV_ASSIST ; 
 int /*<<< orphan*/  CPU_FTR_TM_COMP ; 
 int /*<<< orphan*/  CTRL_RUNLATCH ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct kvm_vcpu* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HFSCR_BHRB ; 
 int HFSCR_DSCR ; 
 int HFSCR_EBB ; 
 int HFSCR_FP ; 
 int HFSCR_PM ; 
 int HFSCR_TAR ; 
 int HFSCR_TM ; 
 int HFSCR_VECVSX ; 
 int /*<<< orphan*/  KVMPPC_VCPU_NOTREADY ; 
 int /*<<< orphan*/  KVM_CPU_3S_64 ; 
 int KVM_MAX_VCORES ; 
 unsigned int KVM_MAX_VCPUS ; 
 int /*<<< orphan*/  MMCR0_FC ; 
 int MSR_ME ; 
 int MSR_SF ; 
 int /*<<< orphan*/  SPRN_HFSCR ; 
 int /*<<< orphan*/  SPRN_PVR ; 
 int /*<<< orphan*/  TB_NIL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 struct kvm_vcpu* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvm_vcpu_cache ; 
 int FUNC7 (struct kvm_vcpu*,struct kvm*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int FUNC9 (struct kvm*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*,int) ; 
 struct kvmppc_vcore* FUNC12 (struct kvm*,unsigned int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct kvm_vcpu *FUNC20(struct kvm *kvm,
						   unsigned int id)
{
	struct kvm_vcpu *vcpu;
	int err;
	int core;
	struct kvmppc_vcore *vcore;

	err = -ENOMEM;
	vcpu = FUNC6(kvm_vcpu_cache, GFP_KERNEL);
	if (!vcpu)
		goto out;

	err = FUNC7(vcpu, kvm, id);
	if (err)
		goto free_vcpu;

	vcpu->arch.shared = &vcpu->arch.shregs;
#ifdef CONFIG_KVM_BOOK3S_PR_POSSIBLE
	/*
	 * The shared struct is never shared on HV,
	 * so we can always use host endianness
	 */
#ifdef __BIG_ENDIAN__
	vcpu->arch.shared_big_endian = true;
#else
	vcpu->arch.shared_big_endian = false;
#endif
#endif
	vcpu->arch.mmcr[0] = MMCR0_FC;
	vcpu->arch.ctrl = CTRL_RUNLATCH;
	/* default to host PVR, since we can't spoof it */
	FUNC11(vcpu, FUNC13(SPRN_PVR));
	FUNC18(&vcpu->arch.vpa_update_lock);
	FUNC18(&vcpu->arch.tbacct_lock);
	vcpu->arch.busy_preempt = TB_NIL;
	vcpu->arch.intr_msr = MSR_SF | MSR_ME;

	/*
	 * Set the default HFSCR for the guest from the host value.
	 * This value is only used on POWER9.
	 * On POWER9, we want to virtualize the doorbell facility, so we
	 * don't set the HFSCR_MSGP bit, and that causes those instructions
	 * to trap and then we emulate them.
	 */
	vcpu->arch.hfscr = HFSCR_TAR | HFSCR_EBB | HFSCR_PM | HFSCR_BHRB |
		HFSCR_DSCR | HFSCR_VECVSX | HFSCR_FP;
	if (FUNC2(CPU_FTR_HVMODE)) {
		vcpu->arch.hfscr &= FUNC13(SPRN_HFSCR);
		if (FUNC2(CPU_FTR_P9_TM_HV_ASSIST))
			vcpu->arch.hfscr |= HFSCR_TM;
	}
	if (FUNC2(CPU_FTR_TM_COMP))
		vcpu->arch.hfscr |= HFSCR_TM;

	FUNC8(vcpu);

	vcpu->arch.state = KVMPPC_VCPU_NOTREADY;

	FUNC4(&vcpu->arch.cpu_run);

	FUNC14(&kvm->lock);
	vcore = NULL;
	err = -EINVAL;
	if (FUNC2(CPU_FTR_ARCH_300)) {
		if (id >= (KVM_MAX_VCPUS * kvm->arch.emul_smt_mode)) {
			FUNC16("KVM: VCPU ID too high\n");
			core = KVM_MAX_VCORES;
		} else {
			FUNC0(kvm->arch.smt_mode != 1);
			core = FUNC9(kvm, id);
		}
	} else {
		core = id / kvm->arch.smt_mode;
	}
	if (core < KVM_MAX_VCORES) {
		vcore = kvm->arch.vcores[core];
		if (vcore && FUNC2(CPU_FTR_ARCH_300)) {
			FUNC16("KVM: collision on id %u", id);
			vcore = NULL;
		} else if (!vcore) {
			/*
			 * Take mmu_setup_lock for mutual exclusion
			 * with kvmppc_update_lpcr().
			 */
			err = -ENOMEM;
			vcore = FUNC12(kvm,
					id & ~(kvm->arch.smt_mode - 1));
			FUNC14(&kvm->arch.mmu_setup_lock);
			kvm->arch.vcores[core] = vcore;
			kvm->arch.online_vcores++;
			FUNC15(&kvm->arch.mmu_setup_lock);
		}
	}
	FUNC15(&kvm->lock);

	if (!vcore)
		goto free_vcpu;

	FUNC17(&vcore->lock);
	++vcore->num_threads;
	FUNC19(&vcore->lock);
	vcpu->arch.vcore = vcore;
	vcpu->arch.ptid = vcpu->vcpu_id - vcore->first_vcpuid;
	vcpu->arch.thread_cpu = -1;
	vcpu->arch.prev_cpu = -1;

	vcpu->arch.cpu_type = KVM_CPU_3S_64;
	FUNC10(vcpu);

	FUNC3(vcpu, id);

	return vcpu;

free_vcpu:
	FUNC5(kvm_vcpu_cache, vcpu);
out:
	return FUNC1(err);
}