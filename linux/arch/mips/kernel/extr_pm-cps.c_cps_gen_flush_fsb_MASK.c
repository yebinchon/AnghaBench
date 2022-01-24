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
struct uasm_reloc {int dummy; } ;
struct uasm_label {int dummy; } ;
struct TYPE_2__ {unsigned int linesz; } ;
struct cpuinfo_mips {unsigned int processor_id; int /*<<< orphan*/  cputype; TYPE_1__ dcache; } ;

/* Variables and functions */
 scalar_t__ CKSEG0 ; 
#define  CPU_INTERAPTIV 129 
#define  CPU_PROAPTIV 128 
 int /*<<< orphan*/  Hit_Invalidate_D ; 
 int /*<<< orphan*/  Hit_Writeback_Inv_SD ; 
 unsigned int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 unsigned int PRID_REV_MASK ; 
 int /*<<< orphan*/  STYPE_SYNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,long) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  t0 ; 
 int /*<<< orphan*/  t1 ; 
 int /*<<< orphan*/  t2 ; 
 int /*<<< orphan*/  t3 ; 
 int /*<<< orphan*/  FUNC3 (struct uasm_label**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,struct uasm_reloc**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  zero ; 

__attribute__((used)) static int FUNC13(u32 **pp, struct uasm_label **pl,
			     struct uasm_reloc **pr,
			     const struct cpuinfo_mips *cpu_info,
			     int lbl)
{
	unsigned i, fsb_size = 8;
	unsigned num_loads = (fsb_size * 3) / 2;
	unsigned line_stride = 2;
	unsigned line_size = cpu_info->dcache.linesz;
	unsigned perf_counter, perf_event;
	unsigned revision = cpu_info->processor_id & PRID_REV_MASK;

	/*
	 * Determine whether this CPU requires an FSB flush, and if so which
	 * performance counter/event reflect stalls due to a full FSB.
	 */
	switch (FUNC2(cpu_info->cputype)) {
	case CPU_INTERAPTIV:
		perf_counter = 1;
		perf_event = 51;
		break;

	case CPU_PROAPTIV:
		/* Newer proAptiv cores don't require this workaround */
		if (revision >= FUNC0(1, 1, 0))
			return 0;

		/* On older ones it's unavailable */
		return -1;

	default:
		/* Assume that the CPU does not need this workaround */
		return 0;
	}

	/*
	 * Ensure that the fill/store buffer (FSB) is not holding the results
	 * of a prefetch, since if it is then the CPC sequencer may become
	 * stuck in the D3 (ClrBus) state whilst entering a low power state.
	 */

	/* Preserve perf counter setup */
	FUNC8(pp, t2, 25, (perf_counter * 2) + 0); /* PerfCtlN */
	FUNC8(pp, t3, 25, (perf_counter * 2) + 1); /* PerfCntN */

	/* Setup perf counter to count FSB full pipeline stalls */
	FUNC4(pp, t0, zero, (perf_event << 5) | 0xf);
	FUNC9(pp, t0, 25, (perf_counter * 2) + 0); /* PerfCtlN */
	FUNC6(pp);
	FUNC9(pp, zero, 25, (perf_counter * 2) + 1); /* PerfCntN */
	FUNC6(pp);

	/* Base address for loads */
	FUNC1(pp, t0, (long)CKSEG0);

	/* Start of clear loop */
	FUNC3(pl, *pp, lbl);

	/* Perform some loads to fill the FSB */
	for (i = 0; i < num_loads; i++)
		FUNC7(pp, zero, i * line_size * line_stride, t0);

	/*
	 * Invalidate the new D-cache entries so that the cache will need
	 * refilling (via the FSB) if the loop is executed again.
	 */
	for (i = 0; i < num_loads; i++) {
		FUNC5(pp, Hit_Invalidate_D,
			     i * line_size * line_stride, t0);
		FUNC5(pp, Hit_Writeback_Inv_SD,
			     i * line_size * line_stride, t0);
	}

	/* Barrier ensuring previous cache invalidates are complete */
	FUNC11(pp, STYPE_SYNC);
	FUNC6(pp);

	/* Check whether the pipeline stalled due to the FSB being full */
	FUNC8(pp, t1, 25, (perf_counter * 2) + 1); /* PerfCntN */

	/* Loop if it didn't */
	FUNC12(pp, pr, t1, lbl);
	FUNC10(pp);

	/* Restore perf counter 1. The count may well now be wrong... */
	FUNC9(pp, t2, 25, (perf_counter * 2) + 0); /* PerfCtlN */
	FUNC6(pp);
	FUNC9(pp, t3, 25, (perf_counter * 2) + 1); /* PerfCntN */
	FUNC6(pp);

	return 0;
}