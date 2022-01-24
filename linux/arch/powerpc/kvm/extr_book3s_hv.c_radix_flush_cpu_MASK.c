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
struct TYPE_4__ {struct kvm_nested_guest* nested; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm_nested_guest {int /*<<< orphan*/  cpu_in_guest; int /*<<< orphan*/  need_tlb_flush; } ;
struct TYPE_3__ {int /*<<< orphan*/  cpu_in_guest; int /*<<< orphan*/  need_tlb_flush; } ;
struct kvm {TYPE_1__ arch; } ;
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  do_nothing ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int threads_per_core ; 

__attribute__((used)) static void FUNC5(struct kvm *kvm, int cpu, struct kvm_vcpu *vcpu)
{
	struct kvm_nested_guest *nested = vcpu->arch.nested;
	cpumask_t *cpu_in_guest;
	int i;

	cpu = FUNC0(cpu);
	if (nested) {
		FUNC1(cpu, &nested->need_tlb_flush);
		cpu_in_guest = &nested->cpu_in_guest;
	} else {
		FUNC1(cpu, &kvm->arch.need_tlb_flush);
		cpu_in_guest = &kvm->arch.cpu_in_guest;
	}
	/*
	 * Make sure setting of bit in need_tlb_flush precedes
	 * testing of cpu_in_guest bits.  The matching barrier on
	 * the other side is the first smp_mb() in kvmppc_run_core().
	 */
	FUNC4();
	for (i = 0; i < threads_per_core; ++i)
		if (FUNC2(cpu + i, cpu_in_guest))
			FUNC3(cpu + i, do_nothing, NULL, 1);
}