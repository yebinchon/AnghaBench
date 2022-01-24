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
typedef  unsigned long u32 ;
struct TYPE_3__ {int /*<<< orphan*/  hypercalls; } ;
struct kvm_vcpu {TYPE_1__ stat; int /*<<< orphan*/  kvm; } ;
struct TYPE_4__ {scalar_t__ (* get_cpl ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 unsigned long KVM_ENOSYS ; 
 unsigned long KVM_EPERM ; 
#define  KVM_HC_CLOCK_PAIRING 132 
#define  KVM_HC_KICK_CPU 131 
#define  KVM_HC_SCHED_YIELD 130 
#define  KVM_HC_SEND_IPI 129 
#define  KVM_HC_VAPIC_POLL_IRQ 128 
 int FUNC0 (struct kvm_vcpu*) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct kvm_vcpu*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long,unsigned long,int) ; 
 unsigned long FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,unsigned long) ; 
 unsigned long FUNC8 (struct kvm_vcpu*) ; 
 unsigned long FUNC9 (struct kvm_vcpu*) ; 
 unsigned long FUNC10 (struct kvm_vcpu*) ; 
 unsigned long FUNC11 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC13 (struct kvm_vcpu*) ; 
 TYPE_2__* kvm_x86_ops ; 
 scalar_t__ FUNC14 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC15 (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 

int FUNC16(struct kvm_vcpu *vcpu)
{
	unsigned long nr, a0, a1, a2, a3, ret;
	int op_64_bit;

	if (FUNC2(vcpu->kvm))
		return FUNC1(vcpu);

	nr = FUNC6(vcpu);
	a0 = FUNC8(vcpu);
	a1 = FUNC9(vcpu);
	a2 = FUNC10(vcpu);
	a3 = FUNC11(vcpu);

	FUNC15(nr, a0, a1, a2, a3);

	op_64_bit = FUNC0(vcpu);
	if (!op_64_bit) {
		nr &= 0xFFFFFFFF;
		a0 &= 0xFFFFFFFF;
		a1 &= 0xFFFFFFFF;
		a2 &= 0xFFFFFFFF;
		a3 &= 0xFFFFFFFF;
	}

	if (kvm_x86_ops->get_cpl(vcpu) != 0) {
		ret = -KVM_EPERM;
		goto out;
	}

	switch (nr) {
	case KVM_HC_VAPIC_POLL_IRQ:
		ret = 0;
		break;
	case KVM_HC_KICK_CPU:
		FUNC4(vcpu->kvm, a0, a1);
		FUNC12(vcpu->kvm, a1);
		ret = 0;
		break;
#ifdef CONFIG_X86_64
	case KVM_HC_CLOCK_PAIRING:
		ret = kvm_pv_clock_pairing(vcpu, a0, a1);
		break;
#endif
	case KVM_HC_SEND_IPI:
		ret = FUNC5(vcpu->kvm, a0, a1, a2, a3, op_64_bit);
		break;
	case KVM_HC_SCHED_YIELD:
		FUNC12(vcpu->kvm, a0);
		ret = 0;
		break;
	default:
		ret = -KVM_ENOSYS;
		break;
	}
out:
	if (!op_64_bit)
		ret = (u32)ret;
	FUNC7(vcpu, ret);

	++vcpu->stat.hypercalls;
	return FUNC13(vcpu);
}