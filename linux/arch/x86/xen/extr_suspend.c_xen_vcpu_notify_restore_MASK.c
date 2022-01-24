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
 int /*<<< orphan*/  MSR_IA32_SPEC_CTRL ; 
 int /*<<< orphan*/  X86_FEATURE_SPEC_CTRL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  spec_ctrl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static void FUNC6(void *data)
{
	if (FUNC5() && FUNC0(X86_FEATURE_SPEC_CTRL))
		FUNC4(MSR_IA32_SPEC_CTRL, FUNC2(spec_ctrl));

	/* Boot processor notified via generic timekeeping_resume() */
	if (FUNC1() == 0)
		return;

	FUNC3();
}