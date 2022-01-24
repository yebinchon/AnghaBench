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
typedef  int /*<<< orphan*/  u32 ;
struct perf_event_attr {int size; int pinned; int exclude_idle; int exclude_host; int exclude_user; int exclude_kernel; unsigned int config; int sample_period; int /*<<< orphan*/  type; } ;
struct perf_event {int dummy; } ;
struct kvm_pmc {int counter; int /*<<< orphan*/  idx; struct perf_event* perf_event; } ;
typedef  int /*<<< orphan*/  attr ;
struct TYPE_2__ {int /*<<< orphan*/  reprogram_pmi; } ;

/* Variables and functions */
 unsigned int HSW_IN_TX ; 
 unsigned int HSW_IN_TX_CHECKPOINTED ; 
 scalar_t__ FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  kvm_perf_overflow ; 
 int /*<<< orphan*/  kvm_perf_overflow_intr ; 
 struct perf_event* FUNC3 (struct perf_event_attr*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kvm_pmc*) ; 
 int FUNC4 (struct kvm_pmc*) ; 
 TYPE_1__* FUNC5 (struct kvm_pmc*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct kvm_pmc *pmc, u32 type,
				  unsigned config, bool exclude_user,
				  bool exclude_kernel, bool intr,
				  bool in_tx, bool in_tx_cp)
{
	struct perf_event *event;
	struct perf_event_attr attr = {
		.type = type,
		.size = sizeof(attr),
		.pinned = true,
		.exclude_idle = true,
		.exclude_host = 1,
		.exclude_user = exclude_user,
		.exclude_kernel = exclude_kernel,
		.config = config,
	};

	attr.sample_period = (-pmc->counter) & FUNC4(pmc);

	if (in_tx)
		attr.config |= HSW_IN_TX;
	if (in_tx_cp) {
		/*
		 * HSW_IN_TX_CHECKPOINTED is not supported with nonzero
		 * period. Just clear the sample period so at least
		 * allocating the counter doesn't fail.
		 */
		attr.sample_period = 0;
		attr.config |= HSW_IN_TX_CHECKPOINTED;
	}

	event = FUNC3(&attr, -1, current,
						 intr ? kvm_perf_overflow_intr :
						 kvm_perf_overflow, pmc);
	if (FUNC0(event)) {
		FUNC6("kvm_pmu: event creation failed %ld for pmc->idx = %d\n",
			    FUNC1(event), pmc->idx);
		return;
	}

	pmc->perf_event = event;
	FUNC2(pmc->idx, (unsigned long*)&FUNC5(pmc)->reprogram_pmi);
}