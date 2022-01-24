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
 int /*<<< orphan*/  SPRN_PSSCR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(unsigned long stop_psscr_val,
				      unsigned long stop_psscr_mask)
{
	unsigned long psscr;
	unsigned long srr1;

	if (!FUNC6())
		return;

	psscr = FUNC4(SPRN_PSSCR);
	psscr = (psscr & ~stop_psscr_mask) | stop_psscr_val;

	FUNC0();
	srr1 = FUNC5(psscr, true);
	FUNC1();

	FUNC2();

	FUNC3(srr1);
}