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
struct kvmppc_icp {struct kvm_vcpu* rm_kick_target; int /*<<< orphan*/  rm_action; } ;
struct TYPE_4__ {int thread_cpu; int /*<<< orphan*/  pending_exceptions; struct kvmppc_icp* icp; } ;
struct TYPE_3__ {int /*<<< orphan*/  queue_intr; } ;
struct kvm_vcpu {TYPE_2__ arch; TYPE_1__ stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOOK3S_IRQPRIO_EXTERNAL ; 
 int LPCR_MER ; 
 int /*<<< orphan*/  SPRN_LPCR ; 
 int /*<<< orphan*/  XICS_RM_KICK_VCPU ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ h_ipi_redirect ; 
 int /*<<< orphan*/  FUNC1 (int,struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ kvmppc_host_rm_ops_hv ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct kvm_vcpu *vcpu,
				struct kvm_vcpu *this_vcpu)
{
	struct kvmppc_icp *this_icp = this_vcpu->arch.icp;
	int cpu;
	int hcore;

	/* Mark the target VCPU as having an interrupt pending */
	vcpu->stat.queue_intr++;
	FUNC6(BOOK3S_IRQPRIO_EXTERNAL, &vcpu->arch.pending_exceptions);

	/* Kick self ? Just set MER and return */
	if (vcpu == this_vcpu) {
		FUNC5(SPRN_LPCR, FUNC4(SPRN_LPCR) | LPCR_MER);
		return;
	}

	if (FUNC8() && FUNC2()) {
		/* No XICS access or hypercalls available, too hard */
		this_icp->rm_action |= XICS_RM_KICK_VCPU;
		this_icp->rm_kick_target = vcpu;
		return;
	}

	/*
	 * Check if the core is loaded,
	 * if not, find an available host core to post to wake the VCPU,
	 * if we can't find one, set up state to eventually return too hard.
	 */
	cpu = vcpu->arch.thread_cpu;
	if (cpu < 0 || cpu >= nr_cpu_ids) {
		hcore = -1;
		if (kvmppc_host_rm_ops_hv && h_ipi_redirect)
			hcore = FUNC0(XICS_RM_KICK_VCPU);
		if (hcore != -1) {
			FUNC1(hcore, vcpu);
		} else {
			this_icp->rm_action |= XICS_RM_KICK_VCPU;
			this_icp->rm_kick_target = vcpu;
		}
		return;
	}

	FUNC7();
	FUNC3(cpu);
}