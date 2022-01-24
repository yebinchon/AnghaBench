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
struct TYPE_2__ {unsigned long smt_mode; int emul_smt_mode; int /*<<< orphan*/  online_vcores; } ;
struct kvm {int /*<<< orphan*/  lock; TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_ARCH_300 ; 
 int EBUSY ; 
 int EINVAL ; 
 unsigned long MAX_SMT_THREADS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long threads_per_subcore ; 

__attribute__((used)) static int FUNC4(struct kvm *kvm, unsigned long smt_mode,
			      unsigned long flags)
{
	int err;
	int esmt = 0;

	if (flags)
		return -EINVAL;
	if (smt_mode > MAX_SMT_THREADS || !FUNC1(smt_mode))
		return -EINVAL;
	if (!FUNC0(CPU_FTR_ARCH_300)) {
		/*
		 * On POWER8 (or POWER7), the threading mode is "strict",
		 * so we pack smt_mode vcpus per vcore.
		 */
		if (smt_mode > threads_per_subcore)
			return -EINVAL;
	} else {
		/*
		 * On POWER9, the threading mode is "loose",
		 * so each vcpu gets its own vcore.
		 */
		esmt = smt_mode;
		smt_mode = 1;
	}
	FUNC2(&kvm->lock);
	err = -EBUSY;
	if (!kvm->arch.online_vcores) {
		kvm->arch.smt_mode = smt_mode;
		kvm->arch.emul_smt_mode = esmt;
		err = 0;
	}
	FUNC3(&kvm->lock);

	return err;
}