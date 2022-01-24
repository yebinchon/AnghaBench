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
struct vas_window {int cop; int tx_win; struct vas_window* paste_kaddr; int /*<<< orphan*/  user_win; int /*<<< orphan*/  wcreds_max; int /*<<< orphan*/  pid; int /*<<< orphan*/  nx_win; struct vas_window* rxwin; } ;
struct vas_winctx {int dummy; } ;
struct vas_tx_win_attr {scalar_t__ wcreds_max; int /*<<< orphan*/  user_win; int /*<<< orphan*/  pid; int /*<<< orphan*/  pswid; } ;
struct vas_instance {int dummy; } ;
typedef  enum vas_cop_type { ____Placeholder_vas_cop_type } vas_cop_type ;

/* Variables and functions */
 int EINVAL ; 
 struct vas_window* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct vas_window*) ; 
 int FUNC2 (struct vas_window*) ; 
 int /*<<< orphan*/  VAS_WCREDS_DEFAULT ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 struct vas_instance* FUNC4 (int) ; 
 struct vas_window* FUNC5 (struct vas_instance*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vas_window*,struct vas_tx_win_attr*,struct vas_winctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct vas_window*,struct vas_winctx*) ; 
 struct vas_window* FUNC8 (struct vas_window*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC10 (struct vas_window*) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct vas_instance*,struct vas_window*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int,struct vas_tx_win_attr*) ; 
 int /*<<< orphan*/  FUNC14 (int,struct vas_tx_win_attr*) ; 
 struct vas_window* FUNC15 (struct vas_instance*) ; 
 int /*<<< orphan*/  FUNC16 (struct vas_window*) ; 

struct vas_window *FUNC17(int vasid, enum vas_cop_type cop,
			struct vas_tx_win_attr *attr)
{
	int rc;
	struct vas_window *txwin;
	struct vas_window *rxwin;
	struct vas_winctx winctx;
	struct vas_instance *vinst;

	FUNC13(current, vasid, cop, attr);

	if (!FUNC14(cop, attr))
		return FUNC0(-EINVAL);

	/*
	 * If caller did not specify a vasid but specified the PSWID of a
	 * receive window (applicable only to FTW windows), use the vasid
	 * from that receive window.
	 */
	if (vasid == -1 && attr->pswid)
		FUNC3(attr->pswid, &vasid, NULL);

	vinst = FUNC4(vasid);
	if (!vinst) {
		FUNC9("vasid %d not found!\n", vasid);
		return FUNC0(-EINVAL);
	}

	rxwin = FUNC5(vinst, cop, attr->pswid);
	if (FUNC1(rxwin)) {
		FUNC9("No RxWin for vasid %d, cop %d\n", vasid, cop);
		return rxwin;
	}

	txwin = FUNC15(vinst);
	if (FUNC1(txwin)) {
		rc = FUNC2(txwin);
		goto put_rxwin;
	}

	txwin->cop = cop;
	txwin->tx_win = 1;
	txwin->rxwin = rxwin;
	txwin->nx_win = txwin->rxwin->nx_win;
	txwin->pid = attr->pid;
	txwin->user_win = attr->user_win;
	txwin->wcreds_max = attr->wcreds_max ?: VAS_WCREDS_DEFAULT;

	FUNC6(txwin, attr, &winctx);

	FUNC7(txwin, &winctx);

	/*
	 * If its a kernel send window, map the window address into the
	 * kernel's address space. For user windows, user must issue an
	 * mmap() to map the window into their address space.
	 *
	 * NOTE: If kernel ever resubmits a user CRB after handling a page
	 *	 fault, we will need to map this into kernel as well.
	 */
	if (!txwin->user_win) {
		txwin->paste_kaddr = FUNC8(txwin);
		if (FUNC1(txwin->paste_kaddr)) {
			rc = FUNC2(txwin->paste_kaddr);
			goto free_window;
		}
	} else {
		/*
		 * A user mapping must ensure that context switch issues
		 * CP_ABORT for this thread.
		 */
		rc = FUNC11();
		if (rc)
			goto free_window;
	}

	FUNC12(vinst, txwin);

	return txwin;

free_window:
	FUNC16(txwin);

put_rxwin:
	FUNC10(rxwin);
	return FUNC0(rc);

}