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
struct davinci_lpsc_clk {int flags; int /*<<< orphan*/  md; int /*<<< orphan*/  regmap; int /*<<< orphan*/  pd; } ;
typedef  enum davinci_lpsc_state { ____Placeholder_davinci_lpsc_state } davinci_lpsc_state ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EPCPR ; 
 int LPSC_FORCE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MDCTL_FORCE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int MDSTAT_STATE_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int PDCTL_EPCGOOD ; 
 int PDCTL_NEXT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int PDSTAT_STATE_MASK ; 
 int /*<<< orphan*/  PTCMD ; 
 int /*<<< orphan*/  PTSTAT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC9(struct davinci_lpsc_clk *lpsc,
				enum davinci_lpsc_state next_state)
{
	u32 epcpr, pdstat, mdstat, ptstat;

	FUNC8(lpsc->regmap, FUNC1(lpsc->md), MDSTAT_STATE_MASK,
			  next_state);

	if (lpsc->flags & LPSC_FORCE)
		FUNC8(lpsc->regmap, FUNC1(lpsc->md), MDCTL_FORCE,
				  MDCTL_FORCE);

	FUNC5(lpsc->regmap, FUNC4(lpsc->pd), &pdstat);
	if ((pdstat & PDSTAT_STATE_MASK) == 0) {
		FUNC8(lpsc->regmap, FUNC3(lpsc->pd), PDCTL_NEXT,
				  PDCTL_NEXT);

		FUNC7(lpsc->regmap, PTCMD, FUNC0(lpsc->pd));

		FUNC6(lpsc->regmap, EPCPR, epcpr,
					 epcpr & FUNC0(lpsc->pd), 0, 0);

		FUNC8(lpsc->regmap, FUNC3(lpsc->pd), PDCTL_EPCGOOD,
				  PDCTL_EPCGOOD);
	} else {
		FUNC7(lpsc->regmap, PTCMD, FUNC0(lpsc->pd));
	}

	FUNC6(lpsc->regmap, PTSTAT, ptstat,
				 !(ptstat & FUNC0(lpsc->pd)), 0, 0);

	FUNC6(lpsc->regmap, FUNC2(lpsc->md), mdstat,
				 (mdstat & MDSTAT_STATE_MASK) == next_state,
				 0, 0);
}