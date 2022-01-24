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

/* Variables and functions */
 unsigned long CNST_CACHE_GROUP_MASK ; 
 unsigned long FUNC0 (int) ; 
 unsigned long CNST_CACHE_PMC4_MASK ; 
 unsigned long CNST_CACHE_PMC4_VAL ; 
 unsigned long CNST_EBB_MASK ; 
 unsigned long FUNC1 (unsigned int) ; 
 unsigned long CNST_FAB_MATCH_MASK ; 
 unsigned long FUNC2 (int) ; 
 unsigned long CNST_IFM_MASK ; 
 unsigned long FUNC3 (int) ; 
 unsigned long CNST_L1_QUAL_MASK ; 
 unsigned long FUNC4 (unsigned int) ; 
 unsigned long CNST_NC_MASK ; 
 unsigned long CNST_NC_VAL ; 
 unsigned long FUNC5 (unsigned int) ; 
 unsigned long FUNC6 (unsigned int) ; 
 unsigned long CNST_SAMPLE_MASK ; 
 unsigned long FUNC7 (int) ; 
 unsigned long CNST_THRESH_MASK ; 
 unsigned long FUNC8 (int) ; 
 int /*<<< orphan*/  CPU_FTR_ARCH_300 ; 
 int EVENT_CACHE_SEL_MASK ; 
 int EVENT_CACHE_SEL_SHIFT ; 
 int EVENT_EBB_MASK ; 
 int EVENT_EBB_SHIFT ; 
 int EVENT_IFM_SHIFT ; 
 int EVENT_IS_L1 ; 
 int EVENT_LINUX_MASK ; 
 int EVENT_PMC_MASK ; 
 int EVENT_PMC_SHIFT ; 
 int EVENT_SAMPLE_SHIFT ; 
 int EVENT_THRESH_SHIFT ; 
 int EVENT_THR_CTL_SHIFT ; 
 int EVENT_UNIT_MASK ; 
 int EVENT_UNIT_SHIFT ; 
 int EVENT_WANTS_BHRB ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 

int FUNC15(u64 event, unsigned long *maskp, unsigned long *valp)
{
	unsigned int unit, pmc, cache, ebb;
	unsigned long mask, value;

	mask = value = 0;

	if (!FUNC13(event))
		return -1;

	pmc   = (event >> EVENT_PMC_SHIFT)        & EVENT_PMC_MASK;
	unit  = (event >> EVENT_UNIT_SHIFT)       & EVENT_UNIT_MASK;
	cache = (event >> EVENT_CACHE_SEL_SHIFT)  & EVENT_CACHE_SEL_MASK;
	ebb   = (event >> EVENT_EBB_SHIFT)        & EVENT_EBB_MASK;

	if (pmc) {
		u64 base_event;

		if (pmc > 6)
			return -1;

		/* Ignore Linux defined bits when checking event below */
		base_event = event & ~EVENT_LINUX_MASK;

		if (pmc >= 5 && base_event != 0x500fa &&
				base_event != 0x600f4)
			return -1;

		mask  |= FUNC5(pmc);
		value |= FUNC6(pmc);
	}

	if (pmc <= 4) {
		/*
		 * Add to number of counters in use. Note this includes events with
		 * a PMC of 0 - they still need a PMC, it's just assigned later.
		 * Don't count events on PMC 5 & 6, there is only one valid event
		 * on each of those counters, and they are handled above.
		 */
		mask  |= CNST_NC_MASK;
		value |= CNST_NC_VAL;
	}

	if (unit >= 6 && unit <= 9) {
		if (FUNC9(CPU_FTR_ARCH_300)) {
			mask  |= CNST_CACHE_GROUP_MASK;
			value |= FUNC0(event & 0xff);

			mask |= CNST_CACHE_PMC4_MASK;
			if (pmc == 4)
				value |= CNST_CACHE_PMC4_VAL;
		} else if (cache & 0x7) {
			/*
			 * L2/L3 events contain a cache selector field, which is
			 * supposed to be programmed into MMCRC. However MMCRC is only
			 * HV writable, and there is no API for guest kernels to modify
			 * it. The solution is for the hypervisor to initialise the
			 * field to zeroes, and for us to only ever allow events that
			 * have a cache selector of zero. The bank selector (bit 3) is
			 * irrelevant, as long as the rest of the value is 0.
			 */
			return -1;
		}

	} else if (FUNC9(CPU_FTR_ARCH_300) || (event & EVENT_IS_L1)) {
		mask  |= CNST_L1_QUAL_MASK;
		value |= FUNC4(cache);
	}

	if (FUNC12(event)) {
		mask  |= CNST_SAMPLE_MASK;
		value |= FUNC7(event >> EVENT_SAMPLE_SHIFT);
	}

	if (FUNC9(CPU_FTR_ARCH_300))  {
		if (FUNC11(event) && FUNC14(event)) {
			mask  |= CNST_THRESH_MASK;
			value |= FUNC8(event >> EVENT_THRESH_SHIFT);
		}
	} else {
		/*
		 * Special case for PM_MRK_FAB_RSP_MATCH and PM_MRK_FAB_RSP_MATCH_CYC,
		 * the threshold control bits are used for the match value.
		 */
		if (FUNC10(event)) {
			mask  |= CNST_FAB_MATCH_MASK;
			value |= FUNC2(event >> EVENT_THR_CTL_SHIFT);
		} else {
			if (!FUNC14(event))
				return -1;

			mask  |= CNST_THRESH_MASK;
			value |= FUNC8(event >> EVENT_THRESH_SHIFT);
		}
	}

	if (!pmc && ebb)
		/* EBB events must specify the PMC */
		return -1;

	if (event & EVENT_WANTS_BHRB) {
		if (!ebb)
			/* Only EBB events can request BHRB */
			return -1;

		mask  |= CNST_IFM_MASK;
		value |= FUNC3(event >> EVENT_IFM_SHIFT);
	}

	/*
	 * All events must agree on EBB, either all request it or none.
	 * EBB events are pinned & exclusive, so this should never actually
	 * hit, but we leave it as a fallback in case.
	 */
	mask  |= FUNC1(ebb);
	value |= CNST_EBB_MASK;

	*maskp = mask;
	*valp = value;

	return 0;
}