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
 int /*<<< orphan*/  CX86_CCR3 ; 
 int X86_CR0_CD ; 
 int /*<<< orphan*/  X86_FEATURE_PGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ccr3 ; 
 int /*<<< orphan*/  cr4 ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(void)
{
	/* Flush caches and TLBs */
	FUNC4();

	/* Cyrix ARRs - everything else was excluded at the top */
	FUNC3(CX86_CCR3, ccr3);

	/* Enable caches */
	FUNC5(FUNC2() & ~X86_CR0_CD);

	/* Restore value of CR4 */
	if (FUNC1(X86_FEATURE_PGE))
		FUNC0(cr4);
}