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
struct TYPE_2__ {int tlbsizevtlb; int tlbsizeftlbsets; int tlbsize; } ;

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
 scalar_t__ cpu_has_tlbinv ; 
 TYPE_1__ current_cpu_data ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 unsigned long FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

void FUNC16(void)
{
	unsigned long flags;
	unsigned long old_ctx;
	int entry, ftlbhighset;

	FUNC5(flags);
	/* Save old context and create impossible VPN2 value */
	old_ctx = FUNC8();
	FUNC3();
	FUNC13(0);
	FUNC14(0);

	entry = FUNC7();

	/*
	 * Blast 'em all away.
	 * If there are any wired entries, fall back to iterating
	 */
	if (cpu_has_tlbinv && !entry) {
		if (current_cpu_data.tlbsizevtlb) {
			FUNC15(0);
			FUNC6();
			FUNC10();  /* invalidate VTLB */
		}
		ftlbhighset = current_cpu_data.tlbsizevtlb +
			current_cpu_data.tlbsizeftlbsets;
		for (entry = current_cpu_data.tlbsizevtlb;
		     entry < ftlbhighset;
		     entry++) {
			FUNC15(entry);
			FUNC6();
			FUNC10();  /* invalidate one FTLB set */
		}
	} else {
		while (entry < current_cpu_data.tlbsize) {
			/* Make sure all entries differ. */
			FUNC12(FUNC0(entry));
			FUNC15(entry);
			FUNC6();
			FUNC9();
			entry++;
		}
	}
	FUNC11();
	FUNC12(old_ctx);
	FUNC2();
	FUNC1();
	FUNC4(flags);
}