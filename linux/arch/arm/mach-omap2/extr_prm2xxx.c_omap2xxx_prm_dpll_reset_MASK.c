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
 int /*<<< orphan*/  OMAP2_RM_RSTCTRL ; 
 int /*<<< orphan*/  OMAP_RST_DPLL3_MASK ; 
 int /*<<< orphan*/  WKUP_MOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC1(OMAP_RST_DPLL3_MASK, WKUP_MOD,
				   OMAP2_RM_RSTCTRL);
	/* OCP barrier */
	FUNC0(WKUP_MOD, OMAP2_RM_RSTCTRL);
}