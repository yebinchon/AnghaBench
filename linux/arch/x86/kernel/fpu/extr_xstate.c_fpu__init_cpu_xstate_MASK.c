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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  X86_CR4_OSXSAVE ; 
 int /*<<< orphan*/  X86_FEATURE_XSAVE ; 
 int /*<<< orphan*/  XCR_XFEATURE_ENABLED_MASK ; 
 int XFEATURE_MASK_SUPERVISOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int xfeatures_mask ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void FUNC4(void)
{
	if (!FUNC1(X86_FEATURE_XSAVE) || !xfeatures_mask)
		return;
	/*
	 * Make it clear that XSAVES supervisor states are not yet
	 * implemented should anyone expect it to work by changing
	 * bits in XFEATURE_MASK_* macros and XCR0.
	 */
	FUNC0((xfeatures_mask & XFEATURE_MASK_SUPERVISOR),
		"x86/fpu: XSAVES supervisor states are not yet implemented.\n");

	xfeatures_mask &= ~XFEATURE_MASK_SUPERVISOR;

	FUNC2(X86_CR4_OSXSAVE);
	FUNC3(XCR_XFEATURE_ENABLED_MASK, xfeatures_mask);
}