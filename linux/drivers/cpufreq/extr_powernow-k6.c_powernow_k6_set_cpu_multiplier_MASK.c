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
 int /*<<< orphan*/  MSR_K6_EPMR ; 
 int POWERNOW_IOPORT ; 
 unsigned long X86_CR0_CD ; 
 int* index_to_register ; 
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int) ; 
 unsigned long FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(unsigned int best_i)
{
	unsigned long outvalue, invalue;
	unsigned long msrval;
	unsigned long cr0;

	/* we now need to transform best_i to the BVC format, see AMD#23446 */

	/*
	 * The processor doesn't respond to inquiry cycles while changing the
	 * frequency, so we must disable cache.
	 */
	FUNC1();
	cr0 = FUNC4();
	FUNC6(cr0 | X86_CR0_CD);
	FUNC5();

	outvalue = (1<<12) | (1<<10) | (1<<9) | (index_to_register[best_i]<<5);

	msrval = POWERNOW_IOPORT + 0x1;
	FUNC7(MSR_K6_EPMR, msrval, 0); /* enable the PowerNow port */
	invalue = FUNC0(POWERNOW_IOPORT + 0x8);
	invalue = invalue & 0x1f;
	outvalue = outvalue | invalue;
	FUNC3(outvalue, (POWERNOW_IOPORT + 0x8));
	msrval = POWERNOW_IOPORT + 0x0;
	FUNC7(MSR_K6_EPMR, msrval, 0); /* disable it again */

	FUNC6(cr0);
	FUNC2();
}