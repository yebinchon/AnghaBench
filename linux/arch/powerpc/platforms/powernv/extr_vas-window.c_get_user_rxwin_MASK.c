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
typedef  int /*<<< orphan*/  u32 ;
struct vas_window {scalar_t__ cop; scalar_t__ tx_win; } ;
struct vas_instance {int vas_id; struct vas_window** windows; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct vas_window* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAS_COP_TYPE_FTW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int*) ; 

__attribute__((used)) static struct vas_window *FUNC2(struct vas_instance *vinst, u32 pswid)
{
	int vasid, winid;
	struct vas_window *rxwin;

	FUNC1(pswid, &vasid, &winid);

	if (vinst->vas_id != vasid)
		return FUNC0(-EINVAL);

	rxwin = vinst->windows[winid];

	if (!rxwin || rxwin->tx_win || rxwin->cop != VAS_COP_TYPE_FTW)
		return FUNC0(-EINVAL);

	return rxwin;
}