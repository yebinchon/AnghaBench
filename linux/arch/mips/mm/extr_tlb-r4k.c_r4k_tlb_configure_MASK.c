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
struct TYPE_2__ {scalar_t__ tlbsize; } ;

/* Variables and functions */
 scalar_t__ CPU_R10000 ; 
 scalar_t__ CPU_R12000 ; 
 scalar_t__ CPU_R14000 ; 
 scalar_t__ CPU_R16000 ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PG_ELPA ; 
 int PG_RIE ; 
 int PG_XIE ; 
 scalar_t__ PM_DEFAULT_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ cpu_has_rixi ; 
 TYPE_1__ current_cpu_data ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ temp_tlb_entry ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void)
{
	/*
	 * You should never change this register:
	 *   - On R4600 1.7 the tlbp never hits for pages smaller than
	 *     the value in the c0_pagemask register.
	 *   - The entire mm handling assumes the c0_pagemask register to
	 *     be set to fixed-size pages.
	 */
	FUNC7(PM_DEFAULT_MASK);
	FUNC0();
	if (FUNC4() != PM_DEFAULT_MASK)
		FUNC3("MMU doesn't support PAGE_SIZE=0x%lx", PAGE_SIZE);

	FUNC8(0);
	if (FUNC1() == CPU_R10000 ||
	    FUNC1() == CPU_R12000 ||
	    FUNC1() == CPU_R14000 ||
	    FUNC1() == CPU_R16000)
		FUNC6(0);

	if (cpu_has_rixi) {
		/*
		 * Enable the no read, no exec bits, and enable large physical
		 * address.
		 */
#ifdef CONFIG_64BIT
		set_c0_pagegrain(PG_RIE | PG_XIE | PG_ELPA);
#else
		FUNC5(PG_RIE | PG_XIE);
#endif
	}

	temp_tlb_entry = current_cpu_data.tlbsize - 1;

	/* From this point on the ARC firmware is dead.	 */
	FUNC2();

	/* Did I tell you that ARC SUCKS?  */
}