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
struct perf_event {int dummy; } ;

/* Variables and functions */
#define  PERF_8xx_ID_CPU_CYCLES 131 
#define  PERF_8xx_ID_DTLB_LOAD_MISS 130 
#define  PERF_8xx_ID_HW_INSTRUCTIONS 129 
#define  PERF_8xx_ID_ITLB_LOAD_MISS 128 
 unsigned int PPC_INST_MFSPR ; 
 int /*<<< orphan*/  R10 ; 
 int /*<<< orphan*/  SPRN_ICTRL ; 
 int /*<<< orphan*/  SPRN_SPRG_SCRATCH0 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dtlb_miss_ref ; 
 int FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  insn_ctr_ref ; 
 int /*<<< orphan*/  itlb_miss_ref ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  patch__dtlbmiss_exit_1 ; 
 int /*<<< orphan*/  patch__dtlbmiss_exit_2 ; 
 int /*<<< orphan*/  patch__dtlbmiss_exit_3 ; 
 int /*<<< orphan*/  patch__itlbmiss_exit_1 ; 
 int /*<<< orphan*/  patch__itlbmiss_exit_2 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC7(struct perf_event *event, int flags)
{
	/* mfspr r10, SPRN_SPRG_SCRATCH0 */
	unsigned int insn = PPC_INST_MFSPR | FUNC0(R10) |
			    FUNC1(SPRN_SPRG_SCRATCH0);

	FUNC4(event);

	/* If it was the last user, stop counting to avoid useles overhead */
	switch (FUNC3(event)) {
	case PERF_8xx_ID_CPU_CYCLES:
		break;
	case PERF_8xx_ID_HW_INSTRUCTIONS:
		if (FUNC2(&insn_ctr_ref) == 0)
			FUNC5(SPRN_ICTRL, 7);
		break;
	case PERF_8xx_ID_ITLB_LOAD_MISS:
		if (FUNC2(&itlb_miss_ref) == 0) {
			FUNC6(&patch__itlbmiss_exit_1, insn);
#ifndef CONFIG_PIN_TLB_TEXT
			FUNC6(&patch__itlbmiss_exit_2, insn);
#endif
		}
		break;
	case PERF_8xx_ID_DTLB_LOAD_MISS:
		if (FUNC2(&dtlb_miss_ref) == 0) {
			FUNC6(&patch__dtlbmiss_exit_1, insn);
			FUNC6(&patch__dtlbmiss_exit_2, insn);
			FUNC6(&patch__dtlbmiss_exit_3, insn);
		}
		break;
	}
}