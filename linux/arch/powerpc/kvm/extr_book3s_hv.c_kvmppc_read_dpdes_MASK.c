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
struct kvm_vcpu {int vcpu_id; int /*<<< orphan*/  cpu; TYPE_2__* kvm; } ;
struct TYPE_3__ {int emul_smt_mode; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_nothing ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 struct kvm_vcpu* FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static unsigned long FUNC4(struct kvm_vcpu *vcpu)
{
	int thr, cpu, pcpu, nthreads;
	struct kvm_vcpu *v;
	unsigned long dpdes;

	nthreads = vcpu->kvm->arch.emul_smt_mode;
	dpdes = 0;
	cpu = vcpu->vcpu_id & ~(nthreads - 1);
	for (thr = 0; thr < nthreads; ++thr, ++cpu) {
		v = FUNC2(vcpu->kvm, cpu);
		if (!v)
			continue;
		/*
		 * If the vcpu is currently running on a physical cpu thread,
		 * interrupt it in order to pull it out of the guest briefly,
		 * which will update its vcore->dpdes value.
		 */
		pcpu = FUNC0(v->cpu);
		if (pcpu >= 0)
			FUNC3(pcpu, do_nothing, NULL, 1);
		if (FUNC1(v))
			dpdes |= 1 << thr;
	}
	return dpdes;
}