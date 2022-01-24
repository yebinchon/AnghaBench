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
struct kvm_ppc_mmuv3_cfg {int flags; int process_table; } ;
struct TYPE_2__ {int mmu_ready; int process_table; int /*<<< orphan*/  mmu_setup_lock; int /*<<< orphan*/  vcpus_running; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_ARCH_300 ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int KVM_PPC_MMUV3_GTSE ; 
 int KVM_PPC_MMUV3_RADIX ; 
 unsigned long LPCR_GTSE ; 
 int PATB_GR ; 
 int PRTS_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kvm*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*) ; 
 int FUNC5 (struct kvm*) ; 
 int FUNC6 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12(struct kvm *kvm, struct kvm_ppc_mmuv3_cfg *cfg)
{
	unsigned long lpcr;
	int radix;
	int err;

	/* If not on a POWER9, reject it */
	if (!FUNC1(CPU_FTR_ARCH_300))
		return -ENODEV;

	/* If any unknown flags set, reject it */
	if (cfg->flags & ~(KVM_PPC_MMUV3_RADIX | KVM_PPC_MMUV3_GTSE))
		return -EINVAL;

	/* GR (guest radix) bit in process_table field must match */
	radix = !!(cfg->flags & KVM_PPC_MMUV3_RADIX);
	if (!!(cfg->process_table & PATB_GR) != radix)
		return -EINVAL;

	/* Process table size field must be reasonable, i.e. <= 24 */
	if ((cfg->process_table & PRTS_MASK) > 24)
		return -EINVAL;

	/* We can change a guest to/from radix now, if the host is radix */
	if (radix && !FUNC10())
		return -EINVAL;

	/* If we're a nested hypervisor, we currently only support radix */
	if (FUNC3() && !radix)
		return -EINVAL;

	FUNC8(&kvm->arch.mmu_setup_lock);
	if (radix != FUNC2(kvm)) {
		if (kvm->arch.mmu_ready) {
			kvm->arch.mmu_ready = 0;
			/* order mmu_ready vs. vcpus_running */
			FUNC11();
			if (FUNC0(&kvm->arch.vcpus_running)) {
				kvm->arch.mmu_ready = 1;
				err = -EBUSY;
				goto out_unlock;
			}
		}
		if (radix)
			err = FUNC6(kvm);
		else
			err = FUNC5(kvm);
		if (err)
			goto out_unlock;
	}

	kvm->arch.process_table = cfg->process_table;
	FUNC4(kvm);

	lpcr = (cfg->flags & KVM_PPC_MMUV3_GTSE) ? LPCR_GTSE : 0;
	FUNC7(kvm, lpcr, LPCR_GTSE);
	err = 0;

 out_unlock:
	FUNC9(&kvm->arch.mmu_setup_lock);
	return err;
}