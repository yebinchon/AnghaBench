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
struct kvm_nested_guest {int /*<<< orphan*/  need_tlb_flush; } ;
struct TYPE_2__ {int /*<<< orphan*/  need_tlb_flush; } ;
struct kvm {TYPE_1__ arch; } ;
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_ARCH_300 ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*) ; 

void FUNC5(struct kvm *kvm, int pcpu,
				 struct kvm_nested_guest *nested)
{
	cpumask_t *need_tlb_flush;

	/*
	 * On POWER9, individual threads can come in here, but the
	 * TLB is shared between the 4 threads in a core, hence
	 * invalidating on one thread invalidates for all.
	 * Thus we make all 4 threads use the same bit.
	 */
	if (FUNC1(CPU_FTR_ARCH_300))
		pcpu = FUNC0(pcpu);

	if (nested)
		need_tlb_flush = &nested->need_tlb_flush;
	else
		need_tlb_flush = &kvm->arch.need_tlb_flush;

	if (FUNC3(pcpu, need_tlb_flush)) {
		FUNC4(kvm);

		/* Clear the bit after the TLB flush */
		FUNC2(pcpu, need_tlb_flush);
	}
}