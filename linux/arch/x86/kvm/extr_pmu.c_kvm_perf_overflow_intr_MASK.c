#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct perf_event {struct kvm_pmc* overflow_handler_context; } ;
struct kvm_pmu {int /*<<< orphan*/  irq_work; int /*<<< orphan*/  global_status; int /*<<< orphan*/  reprogram_pmi; } ;
struct kvm_pmc {int /*<<< orphan*/  vcpu; int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_PMI ; 
 int /*<<< orphan*/  KVM_REQ_PMU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct kvm_pmu* FUNC4 (struct kvm_pmc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static void FUNC6(struct perf_event *perf_event,
				   struct perf_sample_data *data,
				   struct pt_regs *regs)
{
	struct kvm_pmc *pmc = perf_event->overflow_handler_context;
	struct kvm_pmu *pmu = FUNC4(pmc);

	if (!FUNC5(pmc->idx,
			      (unsigned long *)&pmu->reprogram_pmi)) {
		FUNC0(pmc->idx, (unsigned long *)&pmu->global_status);
		FUNC3(KVM_REQ_PMU, pmc->vcpu);

		/*
		 * Inject PMI. If vcpu was in a guest mode during NMI PMI
		 * can be ejected on a guest mode re-entry. Otherwise we can't
		 * be sure that vcpu wasn't executing hlt instruction at the
		 * time of vmexit and is not going to re-enter guest mode until
		 * woken up. So we should wake it, but this is impossible from
		 * NMI context. Do it from irq work instead.
		 */
		if (!FUNC2())
			FUNC1(&FUNC4(pmc)->irq_work);
		else
			FUNC3(KVM_REQ_PMI, pmc->vcpu);
	}
}