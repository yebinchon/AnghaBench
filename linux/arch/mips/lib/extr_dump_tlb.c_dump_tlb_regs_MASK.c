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

/* Variables and functions */
#define  CPU_R10000 131 
#define  CPU_R12000 130 
#define  CPU_R14000 129 
#define  CPU_R16000 128 
 scalar_t__ cpu_has_guestid ; 
 scalar_t__ cpu_has_htw ; 
 scalar_t__ cpu_has_rixi ; 
 scalar_t__ cpu_has_small_pages ; 
 scalar_t__ cpu_has_xpa ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int const,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

void FUNC14(void)
{
	const int field = 2 * sizeof(unsigned long);

	FUNC1("Index    : %0x\n", FUNC7());
	FUNC1("PageMask : %0x\n", FUNC9());
	if (cpu_has_guestid)
		FUNC1("GuestCtl1: %0x\n", FUNC6());
	FUNC1("EntryHi  : %0*lx\n", field, FUNC2());
	FUNC1("EntryLo0 : %0*lx\n", field, FUNC3());
	FUNC1("EntryLo1 : %0*lx\n", field, FUNC4());
	FUNC1("Wired    : %0x\n", FUNC13());
	switch (FUNC0()) {
	case CPU_R10000:
	case CPU_R12000:
	case CPU_R14000:
	case CPU_R16000:
		FUNC1("FrameMask: %0x\n", FUNC5());
		break;
	}
	if (cpu_has_small_pages || cpu_has_rixi || cpu_has_xpa)
		FUNC1("PageGrain: %0x\n", FUNC8());
	if (cpu_has_htw) {
		FUNC1("PWField  : %0*lx\n", field, FUNC11());
		FUNC1("PWSize   : %0*lx\n", field, FUNC12());
		FUNC1("PWCtl    : %0x\n", FUNC10());
	}
}