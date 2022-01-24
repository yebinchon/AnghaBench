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
typedef  int u8 ;
typedef  int u64 ;
struct kvm_pmu_event_filter {int nevents; int* events; scalar_t__ action; } ;
struct kvm_pmc {int eventsel; TYPE_1__* vcpu; } ;
struct TYPE_6__ {int /*<<< orphan*/  pmu_event_filter; } ;
struct kvm {int /*<<< orphan*/  srcu; TYPE_2__ arch; } ;
struct TYPE_8__ {TYPE_3__* pmu_ops; } ;
struct TYPE_7__ {unsigned int (* find_arch_event ) (int /*<<< orphan*/ ,int,int) ;} ;
struct TYPE_5__ {struct kvm* kvm; } ;

/* Variables and functions */
 int AMD64_RAW_EVENT_MASK_NB ; 
 int ARCH_PERFMON_EVENTSEL_CMASK ; 
 int ARCH_PERFMON_EVENTSEL_EDGE ; 
 int ARCH_PERFMON_EVENTSEL_ENABLE ; 
 int ARCH_PERFMON_EVENTSEL_EVENT ; 
 int ARCH_PERFMON_EVENTSEL_INT ; 
 int ARCH_PERFMON_EVENTSEL_INV ; 
 int ARCH_PERFMON_EVENTSEL_OS ; 
 int ARCH_PERFMON_EVENTSEL_PIN_CONTROL ; 
 int ARCH_PERFMON_EVENTSEL_UMASK ; 
 int ARCH_PERFMON_EVENTSEL_USR ; 
 int HSW_IN_TX ; 
 int HSW_IN_TX_CHECKPOINTED ; 
 scalar_t__ KVM_PMU_EVENT_ALLOW ; 
 scalar_t__ KVM_PMU_EVENT_DENY ; 
 unsigned int PERF_COUNT_HW_MAX ; 
 unsigned int PERF_TYPE_HARDWARE ; 
 unsigned int PERF_TYPE_RAW ; 
 int X86_RAW_EVENT_MASK ; 
 TYPE_4__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_pmc*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_pmc*,unsigned int,unsigned int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_pmc*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_pmc*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct kvm_pmu_event_filter* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ,int,int) ; 

void FUNC7(struct kvm_pmc *pmc, u64 eventsel)
{
	unsigned config, type = PERF_TYPE_RAW;
	u8 event_select, unit_mask;
	struct kvm *kvm = pmc->vcpu->kvm;
	struct kvm_pmu_event_filter *filter;
	int i;
	bool allow_event = true;

	if (eventsel & ARCH_PERFMON_EVENTSEL_PIN_CONTROL)
		FUNC4("kvm pmu: pin control bit is ignored\n");

	pmc->eventsel = eventsel;

	FUNC2(pmc);

	if (!(eventsel & ARCH_PERFMON_EVENTSEL_ENABLE) || !FUNC0(pmc))
		return;

	filter = FUNC5(kvm->arch.pmu_event_filter, &kvm->srcu);
	if (filter) {
		for (i = 0; i < filter->nevents; i++)
			if (filter->events[i] ==
			    (eventsel & AMD64_RAW_EVENT_MASK_NB))
				break;
		if (filter->action == KVM_PMU_EVENT_ALLOW &&
		    i == filter->nevents)
			allow_event = false;
		if (filter->action == KVM_PMU_EVENT_DENY &&
		    i < filter->nevents)
			allow_event = false;
	}
	if (!allow_event)
		return;

	event_select = eventsel & ARCH_PERFMON_EVENTSEL_EVENT;
	unit_mask = (eventsel & ARCH_PERFMON_EVENTSEL_UMASK) >> 8;

	if (!(eventsel & (ARCH_PERFMON_EVENTSEL_EDGE |
			  ARCH_PERFMON_EVENTSEL_INV |
			  ARCH_PERFMON_EVENTSEL_CMASK |
			  HSW_IN_TX |
			  HSW_IN_TX_CHECKPOINTED))) {
		config = kvm_x86_ops->pmu_ops->find_arch_event(FUNC3(pmc),
						      event_select,
						      unit_mask);
		if (config != PERF_COUNT_HW_MAX)
			type = PERF_TYPE_HARDWARE;
	}

	if (type == PERF_TYPE_RAW)
		config = eventsel & X86_RAW_EVENT_MASK;

	FUNC1(pmc, type, config,
			      !(eventsel & ARCH_PERFMON_EVENTSEL_USR),
			      !(eventsel & ARCH_PERFMON_EVENTSEL_OS),
			      eventsel & ARCH_PERFMON_EVENTSEL_INT,
			      (eventsel & HSW_IN_TX),
			      (eventsel & HSW_IN_TX_CHECKPOINTED));
}