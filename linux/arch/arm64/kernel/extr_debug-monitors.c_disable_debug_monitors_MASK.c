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
typedef  enum dbg_active_el { ____Placeholder_dbg_active_el } dbg_active_el ;

/* Variables and functions */
 int DBG_ACTIVE_EL1 ; 
 int DBG_MDSCR_KDE ; 
 int DBG_MDSCR_MDE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kde_ref_count ; 
 int /*<<< orphan*/  mde_ref_count ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(enum dbg_active_el el)
{
	u32 mdscr, disable = 0;

	FUNC0(FUNC3());

	if (FUNC4(mde_ref_count) == 0)
		disable = ~DBG_MDSCR_MDE;

	if (el == DBG_ACTIVE_EL1 &&
	    FUNC4(kde_ref_count) == 0)
		disable &= ~DBG_MDSCR_KDE;

	if (disable) {
		mdscr = FUNC1();
		mdscr &= disable;
		FUNC2(mdscr);
	}
}