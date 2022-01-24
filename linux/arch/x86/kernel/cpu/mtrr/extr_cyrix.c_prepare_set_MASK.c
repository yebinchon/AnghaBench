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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  CX86_CCR3 ; 
 int X86_CR0_CD ; 
 int X86_CR4_PGE ; 
 int /*<<< orphan*/  X86_FEATURE_PGE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int ccr3 ; 
 int cr4 ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(void)
{
	u32 cr0;

	/*  Save value of CR4 and clear Page Global Enable (bit 7)  */
	if (FUNC2(X86_FEATURE_PGE)) {
		cr4 = FUNC0();
		FUNC1(cr4 & ~X86_CR4_PGE);
	}

	/*
	 * Disable and flush caches.
	 * Note that wbinvd flushes the TLBs as a side-effect
	 */
	cr0 = FUNC4() | X86_CR0_CD;
	FUNC6();
	FUNC7(cr0);
	FUNC6();

	/* Cyrix ARRs - everything else was excluded at the top */
	ccr3 = FUNC3(CX86_CCR3);

	/* Cyrix ARRs - everything else was excluded at the top */
	FUNC5(CX86_CCR3, (ccr3 & 0x0f) | 0x10);
}