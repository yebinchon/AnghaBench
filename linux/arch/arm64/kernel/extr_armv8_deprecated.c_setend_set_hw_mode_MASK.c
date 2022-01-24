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
 int EINVAL ; 
 int /*<<< orphan*/  SCTLR_EL1_SED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  sctlr_el1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(bool enable)
{
	if (!FUNC0())
		return -EINVAL;

	if (enable)
		FUNC1(sctlr_el1, SCTLR_EL1_SED, 0);
	else
		FUNC1(sctlr_el1, 0, SCTLR_EL1_SED);
	return 0;
}