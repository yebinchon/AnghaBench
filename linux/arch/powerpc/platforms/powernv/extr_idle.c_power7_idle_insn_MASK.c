#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct p7_sprs {void* wort; void* dscr; void* spurr; void* purr; void* fscr; void* hfscr; void* lpcr; void* rpr; void* sdr1; void* worc; void* tscr; void* uamor; void* amor; void* iamr; void* amr; } ;
struct TYPE_4__ {unsigned long thread_idle_state; unsigned long subcore_sibling_mask; void* sprg_vdso; } ;
struct TYPE_3__ {unsigned long idle_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CPU_FTR_ARCH_207S ; 
 int MSR_DR ; 
 int MSR_IR ; 
 int /*<<< orphan*/  OPAL_CONFIG_IDLE_APPLY ; 
 int /*<<< orphan*/  OPAL_CONFIG_IDLE_FASTSLEEP ; 
 int /*<<< orphan*/  OPAL_CONFIG_IDLE_UNDO ; 
 scalar_t__ OPAL_SUCCESS ; 
 unsigned long PNV_CORE_IDLE_THREAD_WINKLE_BITS ; 
 unsigned long PNV_CORE_IDLE_THREAD_WINKLE_BITS_SHIFT ; 
 unsigned long PNV_CORE_IDLE_WINKLE_COUNT_BITS ; 
 int PNV_CORE_IDLE_WINKLE_COUNT_SHIFT ; 
 unsigned long PNV_THREAD_NAP ; 
 unsigned long PNV_THREAD_RUNNING ; 
 unsigned long PNV_THREAD_WINKLE ; 
 int /*<<< orphan*/  SPRN_AMOR ; 
 int /*<<< orphan*/  SPRN_AMR ; 
 int /*<<< orphan*/  SPRN_DSCR ; 
 int /*<<< orphan*/  SPRN_FSCR ; 
 int /*<<< orphan*/  SPRN_HFSCR ; 
 int /*<<< orphan*/  SPRN_IAMR ; 
 int /*<<< orphan*/  SPRN_LPCR ; 
 int /*<<< orphan*/  SPRN_PURR ; 
 int /*<<< orphan*/  SPRN_RPR ; 
 int /*<<< orphan*/  SPRN_SDR1 ; 
 int /*<<< orphan*/  SPRN_SPRG3 ; 
 int /*<<< orphan*/  SPRN_SPURR ; 
 int /*<<< orphan*/  SPRN_TSCR ; 
 int /*<<< orphan*/  SPRN_UAMOR ; 
 int /*<<< orphan*/  SPRN_WORC ; 
 int /*<<< orphan*/  SPRN_WORT ; 
 unsigned long SRR1_WAKEHMI ; 
 unsigned long SRR1_WAKEMASK_P8 ; 
 unsigned long SRR1_WAKESTATE ; 
 unsigned long SRR1_WS_HVLOSS ; 
 unsigned long SRR1_WS_NOLOSS ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC12 (unsigned long) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (int) ; 
 TYPE_2__* local_paca ; 
 int FUNC15 () ; 
 void* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,void*) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 () ; 
 TYPE_1__** paca_ptrs ; 
 scalar_t__ power7_fastsleep_workaround_entry ; 
 scalar_t__ power7_fastsleep_workaround_exit ; 
 int FUNC20 () ; 
 unsigned long threads_per_core ; 
 scalar_t__ FUNC21 (int) ; 

__attribute__((used)) static unsigned long FUNC22(unsigned long type)
{
	int cpu = FUNC20();
	int first = FUNC8(cpu);
	unsigned long *state = &paca_ptrs[first]->idle_state;
	unsigned long thread = 1UL << FUNC10(cpu);
	unsigned long core_thread_mask = (1UL << threads_per_core) - 1;
	unsigned long srr1;
	bool full_winkle;
	struct p7_sprs sprs = {}; /* avoid false use-uninitialised */
	bool sprs_saved = false;
	int rc;

	if (FUNC21(type != PNV_THREAD_NAP)) {
		FUNC5();

		FUNC1(!(*state & thread));
		*state &= ~thread;

		if (power7_fastsleep_workaround_entry) {
			if ((*state & core_thread_mask) == 0) {
				rc = FUNC18(
						OPAL_CONFIG_IDLE_FASTSLEEP,
						OPAL_CONFIG_IDLE_APPLY);
				FUNC1(rc);
			}
		}

		if (type == PNV_THREAD_WINKLE) {
			sprs.tscr	= FUNC16(SPRN_TSCR);
			sprs.worc	= FUNC16(SPRN_WORC);

			sprs.sdr1	= FUNC16(SPRN_SDR1);
			sprs.rpr	= FUNC16(SPRN_RPR);

			sprs.lpcr	= FUNC16(SPRN_LPCR);
			if (FUNC9(CPU_FTR_ARCH_207S)) {
				sprs.hfscr	= FUNC16(SPRN_HFSCR);
				sprs.fscr	= FUNC16(SPRN_FSCR);
			}
			sprs.purr	= FUNC16(SPRN_PURR);
			sprs.spurr	= FUNC16(SPRN_SPURR);
			sprs.dscr	= FUNC16(SPRN_DSCR);
			sprs.wort	= FUNC16(SPRN_WORT);

			sprs_saved = true;

			/*
			 * Increment winkle counter and set all winkle bits if
			 * all threads are winkling. This allows wakeup side to
			 * distinguish between fast sleep and winkle state
			 * loss. Fast sleep still has to resync the timebase so
			 * this may not be a really big win.
			 */
			*state += 1 << PNV_CORE_IDLE_WINKLE_COUNT_SHIFT;
			if ((*state & PNV_CORE_IDLE_WINKLE_COUNT_BITS)
					>> PNV_CORE_IDLE_WINKLE_COUNT_SHIFT
					== threads_per_core)
				*state |= PNV_CORE_IDLE_THREAD_WINKLE_BITS;
			FUNC2((*state & PNV_CORE_IDLE_WINKLE_COUNT_BITS) == 0);
		}

		FUNC7();
	}

	if (FUNC9(CPU_FTR_ARCH_207S)) {
		sprs.amr	= FUNC16(SPRN_AMR);
		sprs.iamr	= FUNC16(SPRN_IAMR);
		sprs.amor	= FUNC16(SPRN_AMOR);
		sprs.uamor	= FUNC16(SPRN_UAMOR);
	}

	local_paca->thread_idle_state = type;
	srr1 = FUNC12(type);		/* go idle */
	local_paca->thread_idle_state = PNV_THREAD_RUNNING;

	FUNC3(!srr1);
	FUNC3(FUNC15() & (MSR_IR|MSR_DR));

	if (FUNC9(CPU_FTR_ARCH_207S)) {
		if ((srr1 & SRR1_WAKESTATE) != SRR1_WS_NOLOSS) {
			/*
			 * We don't need an isync after the mtsprs here because
			 * the upcoming mtmsrd is execution synchronizing.
			 */
			FUNC17(SPRN_AMR,		sprs.amr);
			FUNC17(SPRN_IAMR,	sprs.iamr);
			FUNC17(SPRN_AMOR,	sprs.amor);
			FUNC17(SPRN_UAMOR,	sprs.uamor);
		}
	}

	if (FUNC21((srr1 & SRR1_WAKEMASK_P8) == SRR1_WAKEHMI))
		FUNC11(NULL);

	if (FUNC14((srr1 & SRR1_WAKESTATE) != SRR1_WS_HVLOSS)) {
		if (FUNC21(type != PNV_THREAD_NAP)) {
			FUNC5();
			if (type == PNV_THREAD_WINKLE) {
				FUNC2((*state & PNV_CORE_IDLE_WINKLE_COUNT_BITS) == 0);
				*state -= 1 << PNV_CORE_IDLE_WINKLE_COUNT_SHIFT;
				*state &= ~(thread << PNV_CORE_IDLE_THREAD_WINKLE_BITS_SHIFT);
			}
			FUNC6();
		}
		return srr1;
	}

	/* HV state loss */
	FUNC1(type == PNV_THREAD_NAP);

	FUNC5();

	full_winkle = false;
	if (type == PNV_THREAD_WINKLE) {
		FUNC2((*state & PNV_CORE_IDLE_WINKLE_COUNT_BITS) == 0);
		*state -= 1 << PNV_CORE_IDLE_WINKLE_COUNT_SHIFT;
		if (*state & (thread << PNV_CORE_IDLE_THREAD_WINKLE_BITS_SHIFT)) {
			*state &= ~(thread << PNV_CORE_IDLE_THREAD_WINKLE_BITS_SHIFT);
			full_winkle = true;
			FUNC1(!sprs_saved);
		}
	}

	FUNC2(*state & thread);

	if ((*state & core_thread_mask) != 0)
		goto core_woken;

	/* Per-core SPRs */
	if (full_winkle) {
		FUNC17(SPRN_TSCR,	sprs.tscr);
		FUNC17(SPRN_WORC,	sprs.worc);
	}

	if (power7_fastsleep_workaround_exit) {
		rc = FUNC18(OPAL_CONFIG_IDLE_FASTSLEEP,
						OPAL_CONFIG_IDLE_UNDO);
		FUNC1(rc);
	}

	/* TB */
	if (FUNC19() != OPAL_SUCCESS)
		FUNC0();

core_woken:
	if (!full_winkle)
		goto subcore_woken;

	if ((*state & local_paca->subcore_sibling_mask) != 0)
		goto subcore_woken;

	/* Per-subcore SPRs */
	FUNC17(SPRN_SDR1,	sprs.sdr1);
	FUNC17(SPRN_RPR,		sprs.rpr);

subcore_woken:
	/*
	 * isync after restoring shared SPRs and before unlocking. Unlock
	 * only contains hwsync which does not necessarily do the right
	 * thing for SPRs.
	 */
	FUNC13();
	FUNC6();

	/* Fast sleep does not lose SPRs */
	if (!full_winkle)
		return srr1;

	/* Per-thread SPRs */
	FUNC17(SPRN_LPCR,	sprs.lpcr);
	if (FUNC9(CPU_FTR_ARCH_207S)) {
		FUNC17(SPRN_HFSCR,	sprs.hfscr);
		FUNC17(SPRN_FSCR,	sprs.fscr);
	}
	FUNC17(SPRN_PURR,	sprs.purr);
	FUNC17(SPRN_SPURR,	sprs.spurr);
	FUNC17(SPRN_DSCR,	sprs.dscr);
	FUNC17(SPRN_WORT,	sprs.wort);

	FUNC17(SPRN_SPRG3,	local_paca->sprg_vdso);

	/*
	 * The SLB has to be restored here, but it sometimes still
	 * contains entries, so the __ variant must be used to prevent
	 * multi hits.
	 */
	FUNC4();

	return srr1;
}