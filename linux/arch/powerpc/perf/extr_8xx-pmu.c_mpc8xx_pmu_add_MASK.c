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
struct TYPE_2__ {int /*<<< orphan*/  prev_count; } ;
struct perf_event {TYPE_1__ hw; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
#define  PERF_8xx_ID_CPU_CYCLES 131 
#define  PERF_8xx_ID_DTLB_LOAD_MISS 130 
#define  PERF_8xx_ID_HW_INSTRUCTIONS 129 
#define  PERF_8xx_ID_ITLB_LOAD_MISS 128 
 int /*<<< orphan*/  SPRN_ICTRL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dtlb_miss_counter ; 
 int /*<<< orphan*/  dtlb_miss_ref ; 
 int FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  insn_ctr_ref ; 
 int /*<<< orphan*/  itlb_miss_counter ; 
 int /*<<< orphan*/  itlb_miss_ref ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  patch__dtlbmiss_exit_1 ; 
 int /*<<< orphan*/  patch__dtlbmiss_exit_2 ; 
 int /*<<< orphan*/  patch__dtlbmiss_exit_3 ; 
 int /*<<< orphan*/  patch__dtlbmiss_perf ; 
 int /*<<< orphan*/  patch__itlbmiss_exit_1 ; 
 int /*<<< orphan*/  patch__itlbmiss_exit_2 ; 
 int /*<<< orphan*/  patch__itlbmiss_perf ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct perf_event *event, int flags)
{
	int type = FUNC1(event);
	s64 val = 0;

	if (type < 0)
		return type;

	switch (type) {
	case PERF_8xx_ID_CPU_CYCLES:
		val = FUNC3();
		break;
	case PERF_8xx_ID_HW_INSTRUCTIONS:
		if (FUNC0(&insn_ctr_ref) == 1)
			FUNC5(SPRN_ICTRL, 0xc0080007);
		val = FUNC2();
		break;
	case PERF_8xx_ID_ITLB_LOAD_MISS:
		if (FUNC0(&itlb_miss_ref) == 1) {
			unsigned long target = FUNC7(&patch__itlbmiss_perf);

			FUNC6(&patch__itlbmiss_exit_1, target, 0);
#ifndef CONFIG_PIN_TLB_TEXT
			FUNC6(&patch__itlbmiss_exit_2, target, 0);
#endif
		}
		val = itlb_miss_counter;
		break;
	case PERF_8xx_ID_DTLB_LOAD_MISS:
		if (FUNC0(&dtlb_miss_ref) == 1) {
			unsigned long target = FUNC7(&patch__dtlbmiss_perf);

			FUNC6(&patch__dtlbmiss_exit_1, target, 0);
			FUNC6(&patch__dtlbmiss_exit_2, target, 0);
			FUNC6(&patch__dtlbmiss_exit_3, target, 0);
		}
		val = dtlb_miss_counter;
		break;
	}
	FUNC4(&event->hw.prev_count, val);
	return 0;
}