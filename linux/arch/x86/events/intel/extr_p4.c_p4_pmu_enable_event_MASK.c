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
typedef  int u64 ;
struct hw_perf_event {int idx; int config_base; int /*<<< orphan*/  config; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct p4_event_bind {int* escr_msr; int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int P4_CCCR_ENABLE ; 
 int P4_CCCR_RESERVED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int P4_ESCR_EVENT_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 struct p4_event_bind* p4_event_bind_map ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static void FUNC11(struct perf_event *event)
{
	struct hw_perf_event *hwc = &event->hw;
	int thread = FUNC7(hwc->config);
	u64 escr_conf = FUNC5(FUNC3(hwc->config));
	unsigned int idx = FUNC6(hwc->config);
	struct p4_event_bind *bind;
	u64 escr_addr, cccr;

	bind = &p4_event_bind_map[idx];
	escr_addr = bind->escr_msr[thread];

	/*
	 * - we dont support cascaded counters yet
	 * - and counter 1 is broken (erratum)
	 */
	FUNC2(FUNC8(hwc->config));
	FUNC2(hwc->idx == 1);

	/* we need a real Event value */
	escr_conf &= ~P4_ESCR_EVENT_MASK;
	escr_conf |= FUNC0(FUNC1(bind->opcode));

	cccr = FUNC4(hwc->config);

	/*
	 * it could be Cache event so we need to write metrics
	 * into additional MSRs
	 */
	FUNC9(hwc->config);

	(void)FUNC10(escr_addr, escr_conf);
	(void)FUNC10(hwc->config_base,
				(cccr & ~P4_CCCR_RESERVED) | P4_CCCR_ENABLE);
}