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
typedef  scalar_t__ nasid_t ;
typedef  int /*<<< orphan*/  lboard_t ;
typedef  int /*<<< orphan*/  klxbow_t ;

/* Variables and functions */
 int ENODEV ; 
 int HUB_WIDGET_ID_MAX ; 
 int HUB_WIDGET_ID_MIN ; 
 int /*<<< orphan*/  KLSTRUCT_XBOW ; 
 int /*<<< orphan*/  KLTYPE_MIDPLANE8 ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC8(nasid_t nasid)
{
	lboard_t *brd;
	klxbow_t *xbow_p;
	unsigned masterwid, i;

	/*
	 * found xbow, so may have multiple bridges
	 * need to probe xbow
	 */
	brd = FUNC6((lboard_t *)FUNC0(nasid), KLTYPE_MIDPLANE8);
	if (!brd)
		return -ENODEV;

	xbow_p = (klxbow_t *)FUNC5(brd, NULL, KLSTRUCT_XBOW);
	if (!xbow_p)
		return -ENODEV;

	/*
	 * Okay, here's a xbow. Let's arbitrate and find
	 * out if we should initialize it. Set enabled
	 * hub connected at highest or lowest widget as
	 * master.
	 */
#ifdef WIDGET_A
	i = HUB_WIDGET_ID_MAX + 1;
	do {
		i--;
	} while ((!XBOW_PORT_TYPE_HUB(xbow_p, i)) ||
		 (!XBOW_PORT_IS_ENABLED(xbow_p, i)));
#else
	i = HUB_WIDGET_ID_MIN - 1;
	do {
		i++;
	} while ((!FUNC3(xbow_p, i)) ||
		 (!FUNC1(xbow_p, i)));
#endif

	masterwid = i;
	if (nasid != FUNC2(xbow_p, i))
		return 1;

	for (i = HUB_WIDGET_ID_MIN; i <= HUB_WIDGET_ID_MAX; i++) {
		if (FUNC1(xbow_p, i) &&
		    FUNC4(xbow_p, i))
			FUNC7(nasid, i, masterwid);
	}

	return 0;
}