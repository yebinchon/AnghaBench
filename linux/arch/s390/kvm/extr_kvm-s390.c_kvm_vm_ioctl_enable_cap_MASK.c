#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct kvm_enable_cap {int cap; scalar_t__ flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  fac_list; int /*<<< orphan*/  fac_mask; } ;
struct TYPE_8__ {int use_irqchip; int user_sigp; int user_stsi; int user_instr0; int /*<<< orphan*/  use_pfmfi; int /*<<< orphan*/  use_skf; int /*<<< orphan*/  use_cmma; TYPE_1__ model; } ;
struct kvm {TYPE_4__ arch; int /*<<< orphan*/  lock; TYPE_3__* mm; int /*<<< orphan*/  created_vcpus; } ;
struct TYPE_6__ {int allow_gmap_hpage_1m; } ;
struct TYPE_7__ {int /*<<< orphan*/  mmap_sem; TYPE_2__ context; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  KVM_CAP_S390_AIS 136 
#define  KVM_CAP_S390_GS 135 
#define  KVM_CAP_S390_HPAGE_1M 134 
#define  KVM_CAP_S390_IRQCHIP 133 
#define  KVM_CAP_S390_RI 132 
#define  KVM_CAP_S390_USER_INSTR0 131 
#define  KVM_CAP_S390_USER_SIGP 130 
#define  KVM_CAP_S390_USER_STSI 129 
#define  KVM_CAP_S390_VECTOR_REGISTERS 128 
 int /*<<< orphan*/  MACHINE_HAS_VX ; 
 int /*<<< orphan*/  FUNC0 (struct kvm*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hpage ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct kvm *kvm, struct kvm_enable_cap *cap)
{
	int r;

	if (cap->flags)
		return -EINVAL;

	switch (cap->cap) {
	case KVM_CAP_S390_IRQCHIP:
		FUNC0(kvm, 3, "%s", "ENABLE: CAP_S390_IRQCHIP");
		kvm->arch.use_irqchip = 1;
		r = 0;
		break;
	case KVM_CAP_S390_USER_SIGP:
		FUNC0(kvm, 3, "%s", "ENABLE: CAP_S390_USER_SIGP");
		kvm->arch.user_sigp = 1;
		r = 0;
		break;
	case KVM_CAP_S390_VECTOR_REGISTERS:
		FUNC4(&kvm->lock);
		if (kvm->created_vcpus) {
			r = -EBUSY;
		} else if (MACHINE_HAS_VX) {
			FUNC6(kvm->arch.model.fac_mask, 129);
			FUNC6(kvm->arch.model.fac_list, 129);
			if (FUNC7(134)) {
				FUNC6(kvm->arch.model.fac_mask, 134);
				FUNC6(kvm->arch.model.fac_list, 134);
			}
			if (FUNC7(135)) {
				FUNC6(kvm->arch.model.fac_mask, 135);
				FUNC6(kvm->arch.model.fac_list, 135);
			}
			if (FUNC7(148)) {
				FUNC6(kvm->arch.model.fac_mask, 148);
				FUNC6(kvm->arch.model.fac_list, 148);
			}
			if (FUNC7(152)) {
				FUNC6(kvm->arch.model.fac_mask, 152);
				FUNC6(kvm->arch.model.fac_list, 152);
			}
			r = 0;
		} else
			r = -EINVAL;
		FUNC5(&kvm->lock);
		FUNC0(kvm, 3, "ENABLE: CAP_S390_VECTOR_REGISTERS %s",
			 r ? "(not available)" : "(success)");
		break;
	case KVM_CAP_S390_RI:
		r = -EINVAL;
		FUNC4(&kvm->lock);
		if (kvm->created_vcpus) {
			r = -EBUSY;
		} else if (FUNC7(64)) {
			FUNC6(kvm->arch.model.fac_mask, 64);
			FUNC6(kvm->arch.model.fac_list, 64);
			r = 0;
		}
		FUNC5(&kvm->lock);
		FUNC0(kvm, 3, "ENABLE: CAP_S390_RI %s",
			 r ? "(not available)" : "(success)");
		break;
	case KVM_CAP_S390_AIS:
		FUNC4(&kvm->lock);
		if (kvm->created_vcpus) {
			r = -EBUSY;
		} else {
			FUNC6(kvm->arch.model.fac_mask, 72);
			FUNC6(kvm->arch.model.fac_list, 72);
			r = 0;
		}
		FUNC5(&kvm->lock);
		FUNC0(kvm, 3, "ENABLE: AIS %s",
			 r ? "(not available)" : "(success)");
		break;
	case KVM_CAP_S390_GS:
		r = -EINVAL;
		FUNC4(&kvm->lock);
		if (kvm->created_vcpus) {
			r = -EBUSY;
		} else if (FUNC7(133)) {
			FUNC6(kvm->arch.model.fac_mask, 133);
			FUNC6(kvm->arch.model.fac_list, 133);
			r = 0;
		}
		FUNC5(&kvm->lock);
		FUNC0(kvm, 3, "ENABLE: CAP_S390_GS %s",
			 r ? "(not available)" : "(success)");
		break;
	case KVM_CAP_S390_HPAGE_1M:
		FUNC4(&kvm->lock);
		if (kvm->created_vcpus)
			r = -EBUSY;
		else if (!hpage || kvm->arch.use_cmma || FUNC3(kvm))
			r = -EINVAL;
		else {
			r = 0;
			FUNC1(&kvm->mm->mmap_sem);
			kvm->mm->context.allow_gmap_hpage_1m = 1;
			FUNC8(&kvm->mm->mmap_sem);
			/*
			 * We might have to create fake 4k page
			 * tables. To avoid that the hardware works on
			 * stale PGSTEs, we emulate these instructions.
			 */
			kvm->arch.use_skf = 0;
			kvm->arch.use_pfmfi = 0;
		}
		FUNC5(&kvm->lock);
		FUNC0(kvm, 3, "ENABLE: CAP_S390_HPAGE %s",
			 r ? "(not available)" : "(success)");
		break;
	case KVM_CAP_S390_USER_STSI:
		FUNC0(kvm, 3, "%s", "ENABLE: CAP_S390_USER_STSI");
		kvm->arch.user_stsi = 1;
		r = 0;
		break;
	case KVM_CAP_S390_USER_INSTR0:
		FUNC0(kvm, 3, "%s", "ENABLE: CAP_S390_USER_INSTR0");
		kvm->arch.user_instr0 = 1;
		FUNC2(kvm);
		r = 0;
		break;
	default:
		r = -EINVAL;
		break;
	}
	return r;
}