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
struct vas_window {int tx_win; int cop; int /*<<< orphan*/  pid; int /*<<< orphan*/  wcreds_max; scalar_t__ user_win; int /*<<< orphan*/  nx_win; } ;
struct vas_winctx {int dummy; } ;
struct vas_rx_win_attr {scalar_t__ user_win; scalar_t__ wcreds_max; int /*<<< orphan*/  nx_win; } ;
struct vas_instance {int dummy; } ;
typedef  enum vas_cop_type { ____Placeholder_vas_cop_type } vas_cop_type ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct vas_window* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct vas_window*) ; 
 int /*<<< orphan*/  VAS_WCREDS_DEFAULT ; 
 int /*<<< orphan*/  current ; 
 struct vas_instance* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct vas_window*,struct vas_rx_win_attr*,struct vas_winctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct vas_window*,struct vas_winctx*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int,struct vas_rx_win_attr*) ; 
 int /*<<< orphan*/  FUNC7 (struct vas_instance*,struct vas_window*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int,struct vas_rx_win_attr*) ; 
 struct vas_window* FUNC10 (struct vas_instance*) ; 

struct vas_window *FUNC11(int vasid, enum vas_cop_type cop,
			struct vas_rx_win_attr *rxattr)
{
	struct vas_window *rxwin;
	struct vas_winctx winctx;
	struct vas_instance *vinst;

	FUNC9(current, vasid, cop, rxattr);

	if (!FUNC6(cop, rxattr))
		return FUNC0(-EINVAL);

	vinst = FUNC2(vasid);
	if (!vinst) {
		FUNC5("vasid %d not found!\n", vasid);
		return FUNC0(-EINVAL);
	}
	FUNC5("Found instance %d\n", vasid);

	rxwin = FUNC10(vinst);
	if (FUNC1(rxwin)) {
		FUNC5("Unable to allocate memory for Rx window\n");
		return rxwin;
	}

	rxwin->tx_win = false;
	rxwin->nx_win = rxattr->nx_win;
	rxwin->user_win = rxattr->user_win;
	rxwin->cop = cop;
	rxwin->wcreds_max = rxattr->wcreds_max ?: VAS_WCREDS_DEFAULT;
	if (rxattr->user_win)
		rxwin->pid = FUNC8(current);

	FUNC3(rxwin, rxattr, &winctx);
	FUNC4(rxwin, &winctx);

	FUNC7(vinst, rxwin);

	return rxwin;
}