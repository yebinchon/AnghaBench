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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  b15_rac_flags ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rac_config0_reg ; 

__attribute__((used)) static void FUNC2(void)
{
	/* Coming out of a S3 suspend/resume cycle, the read-ahead cache
	 * register RAC_CONFIG0_REG will be restored to its default value, make
	 * sure we re-enable it and set the enable flag, we are also guaranteed
	 * to run on the boot CPU, so not racy again.
	 */
	FUNC0(rac_config0_reg);
	FUNC1(RAC_SUSPENDED, &b15_rac_flags);
}