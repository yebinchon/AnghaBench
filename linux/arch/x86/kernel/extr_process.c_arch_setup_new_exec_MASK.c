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
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_NOCPUID ; 
 int /*<<< orphan*/  TIF_SSBD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(void)
{
	/* If cpuid was previously disabled for this task, re-enable it. */
	if (FUNC7(TIF_NOCPUID))
		FUNC1();

	/*
	 * Don't inherit TIF_SSBD across exec boundary when
	 * PR_SPEC_DISABLE_NOEXEC is used.
	 */
	if (FUNC7(TIF_SSBD) &&
	    FUNC5(current)) {
		FUNC0(TIF_SSBD);
		FUNC3(current);
		FUNC4(current);
		FUNC2(FUNC6(current)->flags);
	}
}