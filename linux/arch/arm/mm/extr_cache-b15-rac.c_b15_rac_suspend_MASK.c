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
 int /*<<< orphan*/  RAC_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  b15_rac_flags ; 
 int /*<<< orphan*/  rac_config0_reg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(void)
{
	/* Suspend the read-ahead cache oeprations, forcing our cache
	 * implementation to fallback to the regular ARMv7 calls.
	 *
	 * We are guaranteed to be running on the boot CPU at this point and
	 * with every other CPU quiesced, so setting RAC_SUSPENDED is not racy
	 * here.
	 */
	rac_config0_reg = FUNC0();
	FUNC1(RAC_SUSPENDED, &b15_rac_flags);

	return 0;
}