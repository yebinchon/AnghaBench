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
typedef  int u64 ;
struct TYPE_2__ {int tb_armed; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_BCM1480_SCD_PERF_CNT_CFG0 ; 
 int /*<<< orphan*/  A_BCM1480_SCD_PERF_CNT_CFG1 ; 
 int /*<<< orphan*/  A_SCD_PERF_CNT_1 ; 
 int /*<<< orphan*/  A_SCD_PERF_CNT_CFG ; 
 int /*<<< orphan*/  A_SCD_TRACE_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int M_SCD_TRACE_CFG_FORCECNT ; 
 int M_SCD_TRACE_CFG_FREEZE_FULL ; 
 int M_SCD_TRACE_CFG_RESET ; 
 int M_SPC_CFG_CLEAR ; 
 int M_SPC_CFG_ENABLE ; 
 int M_SPC_CFG_SRC1 ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__ sbp ; 
 int tb_period ; 

__attribute__((used)) static void FUNC4(void)
{
	u64 scdperfcnt;
	u64 next = (1ULL << 40) - tb_period;
	u64 tb_options = M_SCD_TRACE_CFG_FREEZE_FULL;

	/*
	 * Generate an SCD_PERFCNT interrupt in TB_PERIOD Zclks to
	 * trigger start of trace.  XXX vary sampling period
	 */
	FUNC3(0, FUNC0(A_SCD_PERF_CNT_1));
	scdperfcnt = FUNC2(FUNC0(A_SCD_PERF_CNT_CFG));

	/*
	 * Unfortunately, in Pass 2 we must clear all counters to knock down
	 * a previous interrupt request.  This means that bus profiling
	 * requires ALL of the SCD perf counters.
	 */
#if defined(CONFIG_SIBYTE_BCM1x55) || defined(CONFIG_SIBYTE_BCM1x80)
	__raw_writeq((scdperfcnt & ~M_SPC_CFG_SRC1) |
						/* keep counters 0,2,3,4,5,6,7 as is */
		     V_SPC_CFG_SRC1(1),		/* counter 1 counts cycles */
		     IOADDR(A_BCM1480_SCD_PERF_CNT_CFG0));
	__raw_writeq(
		     M_SPC_CFG_ENABLE |		/* enable counting */
		     M_SPC_CFG_CLEAR |		/* clear all counters */
		     V_SPC_CFG_SRC1(1),		/* counter 1 counts cycles */
		     IOADDR(A_BCM1480_SCD_PERF_CNT_CFG1));
#else
	FUNC3((scdperfcnt & ~M_SPC_CFG_SRC1) |
						/* keep counters 0,2,3 as is */
		     M_SPC_CFG_ENABLE |		/* enable counting */
		     M_SPC_CFG_CLEAR |		/* clear all counters */
		     FUNC1(1),		/* counter 1 counts cycles */
		     FUNC0(A_SCD_PERF_CNT_CFG));
#endif
	FUNC3(next, FUNC0(A_SCD_PERF_CNT_1));
	/* Reset the trace buffer */
	FUNC3(M_SCD_TRACE_CFG_RESET, FUNC0(A_SCD_TRACE_CFG));
#if 0 && defined(M_SCD_TRACE_CFG_FORCECNT)
	/* XXXKW may want to expose control to the data-collector */
	tb_options |= M_SCD_TRACE_CFG_FORCECNT;
#endif
	FUNC3(tb_options, FUNC0(A_SCD_TRACE_CFG));
	sbp.tb_armed = 1;
}